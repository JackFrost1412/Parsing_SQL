import sqlparse
from sqlparse.sql import Identifier, IdentifierList, Parenthesis
from sqlparse.tokens import DML

def extract_subselects_and_rest(sql):
    parsed = sqlparse.parse(sql)
    subselects_with_names = []
    rest_of_sql = []
    level = 0

    # Helper function to find sub-selects and rest
    def find_subselects_and_rest(token, alias=None):
        nonlocal level
        if isinstance(token, Parenthesis):
            level += 1
            # Check if this parenthesis contains a SELECT (i.e., a subselect)
            if any(t.ttype is DML and t.value.upper() == 'SELECT' for t in token.tokens):
                # Store the subselect with alias
                subselects_with_names.append((alias, str(token)))
                # Recursively find sub-selects within this sub-select
                for subtoken in token.tokens:
                    find_subselects_and_rest(subtoken)
                
                level -= 1
                return  # Skip adding this to the rest of SQL as it's part of a sub-select
            
            # Process the tokens inside the parentheses
            for subtoken in token.tokens:
                find_subselects_and_rest(subtoken, alias)
            level -= 1
        elif isinstance(token, Identifier) or isinstance(token, IdentifierList):
            # Process identifiers or identifier lists
            for subtoken in token.tokens:
                if isinstance(subtoken, Parenthesis):
                    find_subselects_and_rest(subtoken, token.get_real_name())
                else:
                    rest_of_sql.append(str(subtoken))
        elif token.is_group:
            # Process other grouped tokens
            for subtoken in token.tokens:
                find_subselects_and_rest(subtoken)
        else:
            # Only add tokens that are not part of a sub-select
            rest_of_sql.append(str(token))

    # Process each statement in the parsed SQL
    for statement in parsed:
        find_subselects_and_rest(statement)

    rest_of_sql_combined = ''.join(rest_of_sql).strip()

    return subselects_with_names, rest_of_sql_combined

def clean_subselects(subselects_with_names):
    cleaned_subselects = []
    for alias, subselect in subselects_with_names:
        subselect = subselect.strip('()')
        cleaned_subselects.append((alias, subselect))
    return cleaned_subselects

# Function to replace sub-selects with placeholders
def reconstruct_rest_of_sql(sql):
    rest_of_sql_tokens = sqlparse.parse(sql)[0].tokens
    result_sql = []

    def replace_subselects_in_token(token):
        if isinstance(token, Parenthesis):
            # If it's a parenthesis that contains a sub-select, we skip or replace it with a placeholder
            if any(t.ttype is DML and t.value.upper() == 'SELECT' for t in token.tokens):
                # Skip the sub-select and just return an empty string or '...'
                return '()'
            else:
                # Keep the structure intact if there's no sub-select
                return ''.join([replace_subselects_in_token(subtoken) for subtoken in token.tokens])
        elif token.is_group:
            # Handle groups of tokens, recursively replace sub-selects inside groups
            return ''.join([replace_subselects_in_token(subtoken) for subtoken in token.tokens])
        else:
            # For normal tokens, return them as-is
            return str(token)

    # Traverse through all tokens and replace sub-selects
    for token in rest_of_sql_tokens:
        result_sql.append(replace_subselects_in_token(token))

    return ''.join(result_sql)

# Example SQL query
sql_query = """

--LOAN
SELECT LOAN.AC_AR_ID, SUM(TOT_AVL_LMT_AMT) TOT_AVL_LMT_AMT
FROM (SELECT AC_AR.AC_AR_ID
	,nvl(RI_VAL.CLT_VALT - RI_VAL.LMT_CTB, 0) TOT_AVL_LMT_AMT
FROM TWT_FNC_SVC_AR_ANL_FCT_FA_CHG AC_AR
LEFT JOIN AR_X_RI_RLTNP AR_X_RI ON AR_X_RI.AR_ID = AC_AR.AC_AR_ID
	AND AR_X_RI.EFF_DT <= AC_AR.LAST_EFF_DT
	AND AR_X_RI.END_DT > AC_AR.LAST_EFF_DT
	AND AR_X_RI.AR_X_RI_RLTNP_TP_ID = 'B6C71A2D532689A626795C8D4B67A75D' -- LOAN_AR_X_COLATERAL
	AND AR_X_RI.SRC_STM_ID = '0A173E8726B6D97003B5EE634C0CCA92' -- FCC.CLTB_ACC_COLL_LINK_DTLS
LEFT JOIN RI ON AR_X_RI.RI_ID = RI.RI_ID and RI.SRC_STM_ID = 'BB35A878C33FFBF19ADA056E5449DAAF' --FCC.GETM_COLLAT
LEFT JOIN (
	SELECT RI_VAL.RI_ID
		,NVL(MAX(DECODE(CL_CODE, 'CLT_VALT', RI_VAL.VAL_AMT)), 0) CLT_VALT
		,NVL(MAX(DECODE(CL_CODE, 'LMT_CTB', RI_VAL.VAL_AMT)), 0) LMT_CTB
	FROM RI_VAL
	JOIN CV ON RI_VAL.RI_VAL_TP_ID = CV.CL_ID
		AND CV.CL_SCM_CODE = 'RI_VAL_TP'
		AND CV.CL_CODE IN (
			'CLT_VALT'
			,'LMT_CTB'
			)
	WHERE RI_VAL.EFF_DT <= #pDate#
		AND RI_VAL.END_DT > #pDate#
	GROUP BY RI_VAL.RI_ID
	) RI_VAL ON RI_VAL.RI_ID = RI.RI_ID
LEFT JOIN RI_X_UDF_RLTNP RI_X_UDF ON RI_X_UDF.RI_ID = RI.RI_ID
	AND RI_X_UDF.EFF_DT <= #pDate#
	AND RI_X_UDF.END_DT > #pDate#
LEFT JOIN (
	SELECT RI_X_CL.*
		,CV.CL_NM
	FROM RI_X_CL_RLTNP RI_X_CL
	JOIN CV ON RI_X_CL.CL_ID = CV.CL_ID
		AND RI_X_CL.EFF_DT <= #pDate#
		AND RI_X_CL.END_DT > #pDate#
	WHERE RI_X_CL.RI_X_CL_RLTNP_TP_ID = '1AD160750012C416E42B551CC5CA4A5F' -- 'RI_X_COLL_CGY
	) COLL_CGY ON COLL_CGY.RI_ID = RI.RI_ID
LEFT JOIN AR_LC_ST LC_ST ON LC_ST.AR_ID = AR_X_RI.AR_ID
	AND LC_ST.SRC_STM_ID = '85425375A0630AA9C05A16D7D3420345' -- FCC.CLTB_ACCOUNT_APPS_MASTER
	AND LC_ST.AR_LC_ST_SCM_ID = '6B7D2ED561F31655BADF9F232E792DE2' -- TYPE: ACCOUNT_STATUS
	AND LC_ST.EFF_DT <= AC_AR.LAST_EFF_DT
	AND LC_ST.END_DT > AC_AR.LAST_EFF_DT
WHERE RI_X_UDF.UDF_ID = '890E57353540716EA2E539E6A39DBB33' -- GEDCOLLT.TCTD PHAT HANH GTCG
	AND RI_X_UDF.UDF_VAL <> 'KHAC'
	AND RI_LC_ST_TP_ID = '4C32D5E60A5794603A48F0E1AC950315' -- 'RECORD_STAT = O'
	AND LC_ST.AR_LC_ST_TP_ID IN (
		'7D108472968DF6F6A56D5BDFC01488A9'
		,'06CD0B184A47E6CEB56653555A20950F'
		) -- ACCOUNT_STATUS IN ('A', 'H')
	AND COLL_CGY.CL_NM IN (
		'121101'
		,'121102'
		,'121103'
		,'121991'
		,'121992'
		,'121993'
		,'122101'
		,'122102'
		,'122201'
		,'122202'
		,'122203'
		,'123101'
		,'123102'
		,'123201'
		,'123202'
		,'123301'
		,'123302'
		,'124001'
		,'124002'
		,'124003'
		,'125001'
		,'125002'
		,'125003'
		,'126001'
		,'126002'
		,'126003'
		,'129991'
		,'129992'
		,'129993'
		,'170301'
		,'170302'
		)) LOAN
GROUP BY LOAN.AC_AR_ID

UNION ALL

--OD
SELECT AC_AR.AC_AR_ID
	,nvl(CASE 
			WHEN AR_X_LMT.LMT_AMT > 0
				THEN (
						CASE 
							WHEN NVL(TVR_SMY.CLS_VAL_BAL_LCY, 0) < 0
								THEN AR_X_LMT.LMT_AMT + NVL(TVR_SMY.CLS_VAL_BAL_LCY, 0)
							ELSE AR_X_LMT.LMT_AMT
							END
						)
			ELSE C.TOT_AVL_LMT_AMT
			END, 0) TOT_AVL_LMT_AMT
FROM TWT_FNC_SVC_AR_ANL_FCT_FA_CHG AC_AR
LEFT JOIN AR_X_LMT_TP_RLTNP AR_X_LMT ON AC_AR.AC_AR_ID = AR_X_LMT.AR_ID
LEFT JOIN AR_TVR_SMY TVR_SMY ON AC_AR.AC_AR_ID = TVR_SMY.AR_ID
	AND TVR_SMY.MSR_PRD_ID = #pDate#
LEFT JOIN (
	SELECT AR_X_AR.SBJ_AR_ID AR_ID
		,CR_USG_SMY.CLS_AVL_AMT TOT_AVL_LMT_AMT
	FROM AR_X_AR_RLTNP AR_X_AR
	LEFT JOIN AR_CR_USG_SMY CR_USG_SMY ON AR_X_AR.OBJ_AR_ID = CR_USG_SMY.AR_ID
	WHERE AR_X_AR.SRC_STM_ID = 'A859AEF31E787D7AAA50F314F87DE330'
		AND CR_USG_SMY.MSR_PRD_ID = #pDate#
		AND AR_X_AR.EFF_DT <= #pDate#
		AND AR_X_AR.END_DT > #pDate#
		AND AR_X_AR.AR_X_AR_RLTNP_TP_ID = 'E9BCF51A07832895CE3CAFED32695B4D'
	) C ON AC_AR.AC_AR_ID = C.AR_ID
WHERE AC_AR.MUD = 'OD'
	AND AR_X_LMT.EFF_DT <= AC_AR.LAST_EFF_DT
	AND AR_X_LMT.END_DT > AC_AR.LAST_EFF_DT
	AND AR_X_LMT.LMT_TP_ID = 'B00397055F38C5365C64B45D8CD5DFE3'

"""

# Extract sub-selects and rest of SQL
subselects, rest_of_sql = extract_subselects_and_rest(sql_query)

# Clean the sub-selects for better display
cleaned_subselects = clean_subselects(subselects)

# Reconstruct rest of SQL after removing sub-selects
reconstructed_sql = reconstruct_rest_of_sql(sql_query)

for sub_select in cleaned_subselects:
    print("Sub-select with alias:", sub_select[0])
    print(sub_select[1])
print("Reconstructed SQL:", reconstructed_sql) 