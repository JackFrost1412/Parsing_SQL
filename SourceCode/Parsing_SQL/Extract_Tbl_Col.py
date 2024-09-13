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

def extract_columns_without_alias(sql):
    # Patterns to extract parts of the query
    select_pattern = r'\bSELECT\s+(.*?)\s+FROM'
    where_pattern = r'\bWHERE\s+(.*?)\s*(GROUP\s+BY|ORDER\s+BY|$)'
    group_by_pattern = r'\bGROUP\s+BY\s+(.*?)\s*(HAVING|ORDER\s+BY|$)'

    # List to collect columns
    columns = []

    # Define aggregate functions and SQL keywords to ignore
    aggregate_functions = ['SUM', 'COUNT', 'AVG', 'MIN', 'MAX']
    sql_keywords = ['AND', 'OR', 'NOT', 'IN', 'LIKE', 'IS', 'NULL', 'BETWEEN', 'NVL']

    def filter_columns(col_list):
        """
        Function to filter out aggregate functions and SQL keywords.
        """
        return [col for col in col_list if col.upper() not in aggregate_functions + sql_keywords]

    # Extract columns from SELECT part
    select_part = re.search(select_pattern, sql, re.IGNORECASE | re.DOTALL)
    if select_part:
        select_part = select_part.group(1)
        select_columns = re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', select_part)
        columns.extend(filter_columns(select_columns))
    
    # Extract columns from WHERE part
    where_part = re.search(where_pattern, sql, re.IGNORECASE | re.DOTALL)
    if where_part:
        where_part = where_part.group(1)
        where_columns = re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', where_part)
        columns.extend(filter_columns(where_columns))

    # Extract columns from GROUP BY part
    group_by_part = re.search(group_by_pattern, sql, re.IGNORECASE | re.DOTALL)
    if group_by_part:
        group_by_part = group_by_part.group(1)
        group_by_columns = re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', group_by_part)
        columns.extend(filter_columns(group_by_columns))
        
    return columns

