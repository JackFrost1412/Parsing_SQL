import sqlparse

def extract_column_names_without_dot(sql_query):
    # Parse the SQL query
    parsed = sqlparse.parse(sql_query)
    
    # Initialize a set to store column names without dots
    column_names = set()
    
    for stmt in parsed:
        # Process each statement
        tokens = [token for token in stmt.tokens if not token.is_whitespace]
        inside_select = False
        inside_where = False
        inside_group_by = False
        
        for token in tokens:
            # Identify the clause context
            if token.value.upper().startswith('SELECT'):
                inside_select = True
                inside_where = False
                inside_group_by = False
            elif token.value.upper().startswith('WHERE'):
                inside_select = False
                inside_where = True
                inside_group_by = False
            elif token.value.upper().startswith('GROUP BY'):
                inside_select = False
                inside_where = False
                inside_group_by = True
            elif token.value.upper().startswith('UNION') or token.value.upper().startswith('UNION ALL'):
                inside_select = True  # After UNION, start new SELECT
            
            # Extract column names based on the clause context
            if inside_select or inside_where or inside_group_by:
                if token.ttype is None:  # This token might contain column names
                    for subtoken in token.tokens:
                        if subtoken.ttype is None and '.' not in subtoken.value:
                            # Check if the subtoken is not an aggregate function or keyword
                            if not any(func in subtoken.value.upper() for func in ['SUM', 'COUNT', 'AVG', 'MIN', 'MAX']):
                                column_names.add(subtoken.value.strip())
                
                # Reset context if encountering FROM or JOIN
                if token.value.upper() in {'FROM', 'JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'FULL JOIN', 'INNER JOIN', 'OUTER JOIN'}:
                    inside_select = False
                elif token.value.upper().startswith('ORDER BY') or token.value.upper().startswith('HAVING'):
                    inside_select = False
    
    return list(column_names)

# Example usage
sql_query = """
SELECT
	ID,
	AUTO_PERIOD,
	BUSINESS_UNIT_NOTE,
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
	AND  AUTO_PERIOD = :autoPeriod--( TBL_PERIOD_EVALUATION.AUTO_PERIOD)
    AND BUSINESS_UNIT_NOTE = :businessUnitNote;--( TBL_PERIOD_EVALUATION.BUSINESS_UNIT_NOTE)
"""

print(extract_column_names_without_dot(sql_query))
