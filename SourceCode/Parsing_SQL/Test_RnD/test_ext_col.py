import re

def extract_columns_without_alias(sql):
    # Patterns to extract parts of the query
    select_pattern = r'\bSELECT\s+(.*?)\s+FROM'
    where_pattern = r'\bWHERE\s+(.*?)\s*(GROUP\s+BY|ORDER\s+BY|$)'
    group_by_pattern = r'\bGROUP\s+BY\s+(.*?)\s*(HAVING|ORDER\s+BY|$)'

    # List to collect columns
    columns = []

    # Define aggregate functions and SQL keywords to ignore
    aggregate_functions = ['SUM', 'COUNT', 'AVG', 'MIN', 'MAX']
    sql_keywords = [
        'AND', 'OR', 'NOT', 'IN', 'LIKE', 'IS', 'NULL', 'BETWEEN', 'NVL',
        'CASE', 'WHEN', 'THEN', 'ELSE', 'END', 'ON', 'JOIN', 'LEFT', 'RIGHT',
        'INNER', 'OUTER', 'FULL', 'FROM', 'WHERE', 'GROUP', 'BY', 'ORDER',
        'HAVING', 'UNION', 'ALL', 'SELECT', 'WITH', 'AS'
    ]

    def filter_columns(col_list):
        """
        Function to filter out aggregate functions, SQL keywords, literals, and skip table-alias columns.
        """
        return [
            col for col in col_list 
            if col.upper() not in aggregate_functions + sql_keywords 
            and '.' not in col  # Skip alias.column_name
            and not re.match(r'^[\'\"].*[\'\"]$', col)  # Exclude string literals
            and not col.isdigit()  # Exclude numbers
        ]

    # Extract columns from SELECT part
    select_part = re.search(select_pattern, sql, re.IGNORECASE | re.DOTALL)
    if select_part:
        select_part = select_part.group(1)
        # Match standalone column names without aliases (i.e., without dots)
        select_columns = re.findall(r'\b\w+\b', select_part)
        columns.extend(filter_columns(select_columns))
    
    # Extract columns from WHERE part
    where_part = re.search(where_pattern, sql, re.IGNORECASE | re.DOTALL)
    if where_part:
        where_part = where_part.group(1)
        where_columns = re.findall(r'\b\w+\b', where_part)
        columns.extend(filter_columns(where_columns))

    # Extract columns from GROUP BY part
    group_by_part = re.search(group_by_pattern, sql, re.IGNORECASE | re.DOTALL)
    if group_by_part:
        group_by_part = group_by_part.group(1)
        group_by_columns = re.findall(r'\b\w+\b', group_by_part)
        columns.extend(filter_columns(group_by_columns))

    return list(set(columns))




# Example usage
sql_query = '''
SELECT LOAN.AC_AR_ID, SUM(TOT_AVL_LMT_AMT) TOT_AVL_LMT_AMT
FROM LOAN
GROUP BY LOAN.AC_AR_ID

UNION ALL

SELECT AC_AR.AC_AR_ID,
       NVL(CASE
               WHEN AR_X_LMT.LMT_AMT > 0
               THEN CASE
                        WHEN NVL(TVR_SMY.CLS_VAL_BAL_LCY, 0) < 0
                        THEN AR_X_LMT.LMT_AMT + NVL(TVR_SMY.CLS_VAL_BAL_LCY, 0)
                        ELSE AR_X_LMT.LMT_AMT
                     END
               ELSE C.TOT_AVL_LMT_AMT
            END, 0) TOT_AVL_LMT_AMT
FROM TWT_FNC_SVC_AR_ANL_FCT_FA_CHG AC_AR
LEFT JOIN AR_X_LMT_TP_RLTNP AR_X_LMT ON AC_AR.AC_AR_ID = AR_X_LMT.AR_ID
LEFT JOIN AR_TVR_SMY TVR_SMY ON AC_AR.AC_AR_ID = TVR_SMY.AR_ID
        AND TVR_SMY.MSR_PRD_ID = #PDATE#
LEFT JOIN C ON AC_AR.AC_AR_ID = C.AR_ID
WHERE AC_AR.MUD = 'OD'
      AND AR_X_LMT.EFF_DT <= AC_AR.LAST_EFF_DT
      AND AR_X_LMT.END_DT > AC_AR.LAST_EFF_DT
      AND AR_X_LMT.LMT_TP_ID = 'B00397055F38C5365C64B45D8CD5DFE3'
'''

print(extract_columns_without_alias(sql_query))
