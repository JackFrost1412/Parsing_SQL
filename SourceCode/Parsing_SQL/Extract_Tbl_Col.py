import sqlparse
import pandas as pd
from sqlparse.sql import IdentifierList, Identifier
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

def extract_column_names_without_dot(sql_query):
    # Parse the SQL query
    parsed = sqlparse.parse(sql_query)
    
    # Initialize a set to store column names without dots
    column_names = set()
    
    for stmt in parsed:
        # Process each statement
        tokens = [token for token in stmt.tokens if not token.is_whitespace]
        inside_clause = None
        
        for token in tokens:
            # Identify the clause context
            if token.value.upper().startswith('SELECT'):
                inside_clause = 'SELECT'
            elif token.value.upper().startswith('WHERE'):
                inside_clause = 'WHERE'
            elif token.value.upper().startswith('GROUP BY'):
                inside_clause = 'GROUP BY'
            elif token.value.upper().startswith('ON'):
                inside_clause = 'ON'
            elif token.value.upper().startswith('UNION') or token.value.upper().startswith('UNION ALL'):
                inside_clause = 'SELECT'  # Continue to extract columns after UNION
            
            # Extract column names based on the clause context
            if inside_clause:
                # Extract column names from token value
                if token.ttype is None and not token.is_keyword:
                    for subtoken in token.tokens:
                        if subtoken.ttype is None and '.' not in subtoken.value:
                            column_names.add(subtoken.value.strip())
                
                # Reset clause context after processing
                if inside_clause and token.value.upper() in {'FROM', 'JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'FULL JOIN', 'INNER JOIN', 'OUTER JOIN'}:
                    inside_clause = None
    
    return list(column_names)

