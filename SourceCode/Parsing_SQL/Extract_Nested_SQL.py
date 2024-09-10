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
            # print(f"Token: {token}, Type: {token.ttype}")
            # Update the context when encountering relevant keywords
            if token.ttype is Keyword or token.ttype is DML:
                value = token.value.upper()
                if value in ['WITH', 'JOIN', 'INTO', 'UPDATE']:
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

