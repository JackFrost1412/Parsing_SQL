import sqlparse
from sqlparse.sql import IdentifierList, Identifier, Function, Where, Comparison
from sqlparse.tokens import Keyword, DML

def extract_columns_without_dot(sql):
    parsed = sqlparse.parse(sql.upper())[0]
    columns = []

    def process_token(token):
        if isinstance(token, Identifier):
            if isinstance(token.tokens[0], Function):
                process_function(token.tokens[0])
            elif '.' not in token.value:
                columns.append(token.get_real_name())
        elif isinstance(token, Function):
            process_function(token)
        elif isinstance(token, IdentifierList):
            for identifier in token.get_identifiers():
                process_token(identifier)
        elif isinstance(token, Comparison):
            for t in token.tokens:
                process_token(t)
        elif isinstance(token, Where):
            for t in token.tokens:
                process_token(t)

    def process_function(func_token):
        for arg in func_token.get_parameters():
            if isinstance(arg, Identifier) and '.' not in arg.value:
                columns.append(arg.get_real_name())
            elif isinstance(arg, Function):
                process_function(arg)

    current_clause = None
    for token in parsed.tokens:
        if token.ttype is DML and token.value.upper() == 'SELECT':
            current_clause = 'SELECT'
        elif token.ttype is Keyword:
            if token.value.upper() in ('FROM', 'JOIN'):
                current_clause = None  # Skip FROM and JOIN clauses
            elif token.value.upper() in ('GROUP BY', 'ORDER BY'):
                print(f"WHERE clause: ", token.value.upper())
                current_clause = token.value.upper()
            
        
        if current_clause in ('SELECT', 'WHERE', 'GROUP BY', 'ORDER BY'):
            print(f"Clause: ", current_clause)
            print(f"Result token: ", token)
            process_token(token)

    return list(set(col for col in columns if col))

# Example usage
sql_query = """
SELECT
	ID,
	AUTO_PERIOD,
	CONTENT,
	CONTRACT_ID,
	CONTROL_METHOD,
	CREATED_DATE,
	CREATED_USER,
	DESCRIPTION,
	DOCUMENT_NAME,
	FIRST_DATE_CHOSEN_PERIOD,
	FREQUENCY,
	FREQUENCY_UNIT,
	NEW_CUSTOMER,
	RULE_MATCH,
	RULE_NUMBER,
	SANCTION,
	SANCTION_TYPE,
	STATUS,
	TOI,
	TOI_MATCH,
	TOI_VALUE,
	TYPE_PERIOD_RATE,
	UPDATED_DATE,
	UPDATED_USER,
	START_PERIOD,
	GROUP_CONTRACT_CONDITION,
	REASON,
	MIN_APPROVAL_VALUE,
	IS_MIN_APPROVAL_VALUE,
	LOAN_PRODUCT_ID,
	CUSTOMER_ID,
	CLONE_ID,
	AUTO_EVALUATION_RESULT,
	CUSTOMER_CLASS,
	CO_CODE,
	COMPANY_NAME_VN,
	VERSION_CONFIG_ID,
	ORIGIN_ID 
FROM
	TBL_REVENUE_CONDITION 
WHERE
	ID = : contractConditionId--( TBL_PERIOD_EVALUATION.CONTRACT_CONDITION_id)
	AND a.AUTO_PERIOD = :autoPeriod--( TBL_PERIOD_EVALUATION.AUTO_PERIOD)
    AND BUSINESS_UNIT_NOTE = :businessUnitNote;--( TBL_PERIOD_EVALUATION.BUSINESS_UNIT_NOTE);
"""

columns_without_dot = extract_columns_without_dot(sql_query)
print(columns_without_dot)