import sqlparse
import pandas as pd
from sqlparse.sql import IdentifierList, Identifier, Function, Where, Comparison, Parenthesis
from sqlparse.tokens import Keyword, DML, Name
import re
def extract_columns_without_dot(sql):
    # Check if the SQL command is None or empty
    if not sql or not sql.strip():
        return []  # Return an empty list for empty or None SQL input
    
    # Parse the SQL statement
    parsed = sqlparse.parse(sql.upper())
    
    # If only a single SQL statement is passed, grab the first one
    if parsed and len(parsed) == 1:
        parsed_statement = parsed[0]
    else:
        return []  # Return an empty list if no valid statement is found
    
    columns = []

    def process_token(token):
        if isinstance(token, Identifier):
            # print(f"Identifier found first:", token)
            if isinstance(token.tokens[0], Function):
                # print(f"Function in Identifier found:", token.tokens[0])
                process_function(token.tokens[0])

            elif '.' not in token.value:
                # print(f"Identifier found:", token.get_real_name())
                columns.append(token.get_real_name())
        elif isinstance(token, Function):
            # print(f"Function found:", token)
            process_function(token)
        elif isinstance(token, IdentifierList):
            for identifier in token.get_identifiers():
                # print(f"IdentifierList found:", identifier)
                process_token(identifier)
        elif isinstance(token, Comparison):
            for t in token.tokens:
                if t.ttype is Name:
                    columns.append(t.value)
                else:
                    process_token(t)

    def process_function(func_token):
        for arg in func_token.get_parameters():
            if isinstance(arg, Identifier) and '.' not in arg.value:
                columns.append(arg.get_real_name())
            elif isinstance(arg, Function):
                process_function(arg)

    select_seen = False
    for token in parsed_statement.tokens:
        if token.ttype == Keyword:
            print(f"Keyword: {token.value}")
        if token.ttype is DML and token.value.upper() == 'SELECT':
            select_seen = True
            continue
        if select_seen:
            if token.ttype is Keyword and token.value.upper() == 'FROM':
                select_seen = False
                continue
            process_token(token)
        elif token.ttype is Keyword and token.value.upper() in ('GROUP BY', 'ORDER BY'):
            next_token = parsed_statement.token_next(parsed_statement.token_index(token))[1]
            # print(f"ORDER BY, GROUP BY clause:", next_token)
            if next_token:
                process_token(next_token)
        elif isinstance(token, Where):
            for t in token.tokens:
                if isinstance(t, Comparison):
                    for sub_token in t.tokens:
                        if isinstance(sub_token, Identifier):
                            process_token(sub_token)
                        elif sub_token.ttype == sqlparse.tokens.Literal:
                            process_token(sub_token)
                elif t.ttype is Keyword and t.value.upper() == 'AND':
                    next_token = token.token_next(token.token_index(t))[1]
                    process_token(next_token)
                elif isinstance(t, Identifier):
                    print("Column found in WHERE clause:", t.get_real_name())
                elif isinstance(t, Parenthesis):
                    for inner_token in t.tokens:
                        process_token(inner_token)
                else:
                    process_token(t)
        elif token.ttype is Keyword and token.value.upper() in ('ON', 'AND'):
            next_token = parsed_statement.token_next(parsed_statement.token_index(token))[1]
            process_token(next_token)

    return list(set(col for col in columns if col))

# Example usage
sql_query = """
SELECT MAX( PERIOD ) AS PERIOD, TYPE FROM TBL_REVENUE_PERIOD_RATE GROUP BY TYPE;
"""

columns_without_dot = extract_columns_without_dot(sql_query)
# print(columns_without_dot)
