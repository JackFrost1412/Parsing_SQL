import sqlparse
import pandas as pd
from sqlparse.sql import IdentifierList, Identifier
from sqlparse.tokens import Keyword, DML
import re

def clean_sql_query(sql):
    # Replace \(9) with spaces, assuming \(9) represents a tab or space.
    cleaned_query = re.sub(r'\\\(9\)', ' ', sql)
    return cleaned_query

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
    cleaned_query = clean_sql_query(sql)
    # Regular expression to match alias.column patterns
    pattern = re.compile(r'(\b\w+\b)\.(\b\w+\b)', re.IGNORECASE)
    columns = []
    tuples = []
    # Find all matches in the SQL statement
    matches = pattern.findall(cleaned_query)
    
    # Print the extracted alias.column pairs
    if matches:
        # print("Alias.Column Pairs:")
        for alias, column in matches:
            # print(f"- {alias}.{column}")
            columns.append(alias + "." + column)
            tuples = [tuple(col.split('.', 1)) for col in columns]
    return tuples

def extract_columns_without_alias(sql):
    # First clean the query from \(9) placeholders
    cleaned_query = clean_sql_query(sql)
    
    # Patterns for extracting parts of the SQL query
    select_pattern = r'\bSELECT\s+(.*?)\s+FROM'
    where_pattern = r'\bWHERE\s+(.*?)(?:\bGROUP BY|\bORDER BY|\b$)'
    group_by_pattern = r'\bGROUP BY\s+(.*?)(?:\bORDER BY|\b$)'
    order_by_pattern = r'\bORDER BY\s+(.*?)(?:\b$)'
    
    # Extract columns from SELECT part (between SELECT and FROM)
    select_part = re.search(select_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    columns = []
    
    if select_part:
        select_part = select_part.group(1)
        # Find columns that are not prefixed with a table alias in SELECT
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', select_part)
    
    # Extract columns from WHERE part
    where_part = re.search(where_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    if where_part:
        where_part = where_part.group(1)
        # Find columns in WHERE clause without table aliases
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', where_part)
    
    # Extract columns from GROUP BY part
    group_by_part = re.search(group_by_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    if group_by_part:
        group_by_part = group_by_part.group(1)
        # Find columns in GROUP BY clause without table aliases
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', group_by_part)
    
    # Extract columns from ORDER BY part
    order_by_part = re.search(order_by_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    if order_by_part:
        order_by_part = order_by_part.group(1)
        # Find columns in ORDER BY clause without table aliases
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', order_by_part)
    
    # Return unique columns without table alias
    return list(set(columns))

