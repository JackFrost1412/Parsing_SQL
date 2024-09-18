import sqlparse
import pandas as pd
from sqlparse.sql import IdentifierList, Identifier, Function, Where, Comparison
from sqlparse.tokens import Keyword, DML
import re

def extract_table_names_with_aliases(sql):
    # Parse the SQL statement
    parsed = sqlparse.parse(sql)
    
    # List to hold table names and their aliases
    tables_with_aliases = []
    
    for stmt in parsed:
        # Keep track of the current keyword context
        context = None
        
        for token in stmt.tokens:
            # print(f"Token: {token}, Ttype; {token.ttype}, Type: {type(token)}")
            # Update the context when encountering relevant keywords
            if token.ttype is Keyword or token.ttype is DML:
                value = token.value.upper()
                if value in [ 'JOIN', 'INTO', 'UPDATE']:
                    context = value
                elif value in ['FROM', 'LEFT JOIN', 'RIGHT JOIN', 'INNER JOIN', 'OUTER JOIN']:
                    context = 'JOIN'
                elif value.startswith('UNION') or value.startswith('UNION ALL'):
                    context = value
                else:
                    context = None
            
            # Extract table names with aliases based on the current context
            if context and isinstance(token, (Identifier, IdentifierList)):
                identifiers = token.get_identifiers() if isinstance(token, IdentifierList) else [token]
                
                for identifier in identifiers:
                    tables_with_aliases.append((identifier.get_real_name(), identifier.get_alias() or identifier.get_real_name()))
    
    # Convert list to pandas DataFrame
    return tables_with_aliases

def extract_alias_column_pairs(sql):
    # First clean the query from \(9) placeholders
    # Regular expression to match alias.column patterns
    pattern = re.compile(r'(\b\w+\b)\.(\b\w+\b)', re.IGNORECASE)
    columns = []
    tuples = []
    # Find all matches in the SQL statement
    matches = pattern.findall(sql)
    
    # Print the extracted alias.column pairs
    if matches:
        # print("Alias.Column Pairs:")
        for alias, column in matches:
            # print(f"- {alias}.{column}")
            columns.append(alias + "." + column)
            tuples = [tuple(col.split('.', 1)) for col in columns]
    return tuples

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
                print(f"Comparison found:", t)
        elif isinstance(token, Where):
            for t in token.tokens:
                process_token(t)

    def process_function(func_token):
        for arg in func_token.get_parameters():
            if isinstance(arg, Identifier) and '.' not in arg.value:
                columns.append(arg.get_real_name())
            elif isinstance(arg, Function):
                process_function(arg)

    select_seen = False
    for token in parsed.tokens:
        if token.ttype is DML and token.value.upper() == 'SELECT':
            select_seen = True
            continue
        if select_seen:
            if token.ttype is Keyword and token.value.upper() == 'FROM':
                select_seen = False
                continue
            process_token(token)
        elif token.ttype is Keyword and token.value.upper() in ('GROUP BY', 'ORDER BY'):
            next_token = parsed.token_next(parsed.token_index(token))[1]
            print("GROUP/ORDER BY clause found:", next_token)
            if next_token:
                process_token(next_token)
        elif isinstance(token, Where): 
            print(f"WHERE clause found: {token}")
            for t in token.tokens:
                # Check if the token is an Identifier or Comparison
                if isinstance(t, Comparison):
                    # print("Comparison found in WHERE clause:", t)
                    for sub_token in t.tokens:
                        if isinstance(sub_token, Identifier):
                            # print("Column found in WHERE clause:", sub_token.get_real_name())
                            process_token(sub_token)
                        elif sub_token.ttype == sqlparse.tokens.Literal:
                            # print("Literal value in WHERE clause:", sub_token)
                            process_token(sub_token)
                else:
                    process_token(t)
        elif token.ttype is Keyword and token.value.upper() in ('ON', 'AND'):
            next_token = parsed.token_next(parsed.token_index(token))[1]
            # print(f"ON clause found: ",next_token)
    return list(set(col for col in columns if col))

