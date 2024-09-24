import SourceCode.Parsing_SQL.Extract_Subselects as Extract_Subselects
import SourceCode.Parsing_SQL.Extract_WITH_CTE as Extract_WITH_CTE
import SourceCode.Parsing_SQL.Extract_Simple_SQL as Extract_Simple_SQL
import SourceCode.Parsing_SQL.Extract_General_SQL as Extract_General_SQL
import pandas as pd 
import sqlparse
import re

def read_sql_file(file_path):
    
    with open(file_path, 'r') as file:
        return file.read()
    
def clean_sql_query(sql):

    # Step 2: Precompile regex patterns for removing comments and placeholders
    cleaned_query = re.sub(r'--.*', '', sql)                    # Remove single-line comments
    cleaned_query = re.sub(r'/\*.*?\*/', '', cleaned_query, flags=re.DOTALL)  # Remove block comments
    cleaned_query = re.sub(r'\\\(9\)', '', cleaned_query)                  # Remove \(9) placeholders
    
    cleaned_query = sqlparse.format(cleaned_query).upper()
    # Optional: Strip leading/trailing whitespace (optional optimization for tidier output)
    return cleaned_query.strip()
# Compile regex patterns once to avoid repeated compilation
subselect_pattern = re.compile(r'\(\s*SELECT', re.IGNORECASE)

def has_subselect(sql_query):
    # Search for the precompiled pattern in the SQL query
    return bool(subselect_pattern.search(sql_query))

def main_extract_sql_command(sql_query):
    """
    Main function to extract table and column names from an SQL query.
    
    This function determines the type of SQL query (WITH CTE, sub-select, no JOIN, or general query)
    and calls the appropriate helper functions to extract table and column names.
    
    Args:
        sql_query (str): The SQL query string to be parsed.
    
    Returns:
        dict: A dictionary containing table names and column names.
    """   
    
    cleaned_sql = clean_sql_query(sql_query).upper()
    tables = []
    columns = []
    
     # First, group checks together and process more efficiently
    contains_cte = "WITH" in cleaned_sql
    contains_subselect = has_subselect(cleaned_sql)
    contains_join = "JOIN" in cleaned_sql
    
    # Check if the query contains a WITH CTE clause
    if contains_cte:
        # print("Extract CTEs:")
        tables_cte, columns_cte = Extract_WITH_CTE.process_sql_with_ctes(cleaned_sql)
        tables.extend(tables_cte)
        columns.extend(columns_cte)
        #print(tables, columns)
    
    # Check if the query contains sub-selects
    elif contains_subselect:
        # print("Extract sub-selects: ")
        tables_subselect, columns_subselect = Extract_Subselects.process_sql_sub_selects(cleaned_sql)
        tables.extend(tables_subselect)
        columns.extend(columns_subselect)
    
    # Check if the query contains no JOIN clause
    elif not contains_join:
        # print("Extract simple SQL: ")
        tables_no_join, columns_no_join = Extract_Simple_SQL.process_simple_query(cleaned_sql)
        tables.extend(tables_no_join)
        columns.extend(columns_no_join)
    
    # For any other type of SQL query
    else:
        # print("Extract general SQL: ")
        tables_all, columns_all = Extract_General_SQL.extract_general_sql(cleaned_sql)
        tables.extend(tables_all)
        columns.extend(columns_all)
    
    # Create DataFrames
    table_df = pd.DataFrame(tables, columns=["Source", "Table Name", "Table Alias"])
    column_df = pd.DataFrame(columns, columns=["Source", "Table Alias", "Column Name"])
    
    # Output DataFrames
    inner_join_df = pd.merge(table_df, column_df, on = ['Source','Table Alias'], how ='outer')
    return table_df, inner_join_df
    
