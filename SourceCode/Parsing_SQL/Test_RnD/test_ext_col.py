import sqlparse
from sqlparse.sql import IdentifierList, Identifier, Where, Function
from sqlparse.tokens import Keyword, DML

def extract_columns_without_dot(sql):
    # List of aggregate functions
    aggregate_functions = {'SUM', 'COUNT', 'AVG', 'MIN', 'MAX', 'NVL'}
    
    
    # Parse the SQL query
    sql_formatted = sql.upper()
    parsed = sqlparse.parse(sql_formatted)[0]
    
    columns = []

    # Function to recursively process tokens
    def process_tokens(tokens):
        for token in tokens:
            # Skip whitespace and punctuation tokens
            if token.is_whitespace or token.ttype in (sqlparse.tokens.Punctuation, sqlparse.tokens.Whitespace):
                continue

            # If token is an Identifier (e.g., column name)
            if isinstance(token, Identifier):
                # Use the raw value to check for dots
                if '.' not in str(token):
                    # Get the real name of the identifier
                    columns.append(token.get_real_name())
            # If token is an IdentifierList (e.g., a list of columns)
            elif isinstance(token, IdentifierList):
                for identifier in token.get_identifiers():
                    if '.' not in str(identifier):
                        columns.append(identifier.get_real_name())
            # If token is a Function (e.g., SUM(column))
            elif isinstance(token, Function):
                # Check if function name is an aggregate function
                func_name = token.get_name()
                if func_name not in aggregate_functions:
                    process_tokens(token.tokens)  # If it's not an aggregate function, process arguments
                else:
                    # Process function arguments (e.g., SUM(EFF_RATE_PCT) => EFF_RATE_PCT)
                    for arg in token.get_parameters():
                        if isinstance(arg, Identifier) and '.' not in str(arg):
                            columns.append(arg.get_real_name())
            # If token is a parenthesis or a group (could contain nested tokens)
            elif token.is_group:
                process_tokens(token.tokens)
            # For other tokens that may contain sub-tokens
            elif hasattr(token, 'tokens'):
                process_tokens(token.tokens)
            # If token is a comparison or operation in WHERE or ON clauses
            elif token.ttype is None:
                # Check if token value contains a dot
                if '.' not in str(token):
                    columns.append(str(token))

    # Start processing tokens
    for token in parsed.tokens:
        # Skip whitespace and punctuation tokens
        if token.is_whitespace or token.ttype in (sqlparse.tokens.Punctuation, sqlparse.tokens.Whitespace):
            continue

        # Process SELECT clause
        if token.ttype is DML and token.value.upper() == 'SELECT':
            idx = parsed.token_index(token)
            _, next_token = parsed.token_next(idx)  # Extract the token from the tuple
            if next_token:
                process_tokens([next_token])
            continue
        
        # Process WHERE clause
        if isinstance(token, Where):
            process_tokens(token.tokens)
            continue
        
        # Process GROUP BY clause
        if token.ttype is Keyword and token.value.upper().startswith('GROUP BY'):
            idx = parsed.token_index(token)
            _, next_token = parsed.token_next(idx)  # Extract the token from the tuple
            if next_token:
                process_tokens([next_token])
            continue
        
        # Process ON clauses (for JOINs)
        if token.ttype is Keyword and token.value.upper() in ['ON', 'AND'] :
            idx = parsed.token_index(token)
            _, next_token = parsed.token_next(idx)  # Extract the token from the tuple
            if next_token:
                process_tokens([next_token])
            continue

    # Remove duplicates and None values
    columns = [col for col in set(columns) if col]
    return columns

# Example usage
sql_query = """
select
    chg.ac_ar_id,
    sum(EFF_RATE_PCT)  INT_RATE
from TWT_FNC_SVC_AR_ANL_FCT_FA_CHG chg
left join ar_x_rate_tp_rltnp AXR on AXR.ar_x_rate_tp_rltnp_tp_id ='B1D1E14709EF08BBB38D361A980E4DE1'
    AND AXR.RATE_TP_ID = '2EC90B394FDFF95D4EC063F17BE70B47' 
    AND AXR.RATE_CMPT = 'INTEREST_RATE'
    and AXR.ar_id = chg.AC_AR_ID AND AXR.EFF_DT <= LAST_EFF_DT AND AXR.END_DT > LAST_EFF_DT
"""
sql_query.upper
columns_without_dot = extract_columns_without_dot(sql_query)
print(columns_without_dot)
