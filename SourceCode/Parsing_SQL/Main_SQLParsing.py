import Extract_Subselects
import Extract_WITH_CTE
import Extract_Simple_SQL
import Extract_General_SQL
import pandas as pd 
import sqlparse
import re

def read_sql_file(file_path):
    
    with open(file_path, 'r') as file:
        return file.read()
    
def clean_sql_query(sql):
    """
    Function to clean the SQL query by removing \(9) placeholders, single-line comments, 
    and block comments.
    """
    # Remove \(9) placeholders
    cleaned_query = re.sub(r'\\\(9\)', '', sql)
    # Remove single-line comments (anything after --)
    cleaned_query = re.sub(r'--.*', '', cleaned_query)
    # Remove block comments (/* comment */)
    cleaned_query = re.sub(r'/\*.*?\*/', '', cleaned_query, flags=re.DOTALL)
    return cleaned_query
def has_subselect(sql_query):
    """
    Check if a SQL query contains a sub-select by looking for patterns where
    an opening parenthesis '(' is followed by the keyword 'SELECT'.
    """
    # Define a regex to detect '(SELECT ...)' patterns
    subselect_pattern = re.compile(r'\(\s*SELECT', re.IGNORECASE)
    
    # Search for the pattern in the SQL query
    if subselect_pattern.search(sql_query):
        return True
    return False
   
def main_extract_sql_command(file_path):
    """
    Main function to extract table and column names from an SQL query.
    
    This function determines the type of SQL query (WITH CTE, sub-select, no JOIN, or general query)
    and calls the appropriate helper functions to extract table and column names.
    
    Args:
        sql_query (str): The SQL query string to be parsed.
    
    Returns:
        dict: A dictionary containing table names and column names.
    """   
    
    sql_query = read_sql_file(file_path).upper()
    cleaned_sql = clean_sql_query(sql_query)

    tables = []
    columns = []

    # Check if the query contains a WITH CTE clause
    if "WITH" in cleaned_sql:
        print("Extract CTEs:")
        formatted_sql = sqlparse.format(cleaned_sql).upper()
        tables_cte, columns_cte = Extract_WITH_CTE.process_sql_with_ctes(formatted_sql)
        tables.extend(tables_cte)
        columns.extend(columns_cte)
        #print(tables, columns)
    
    # Check if the query contains sub-selects
    elif has_subselect(cleaned_sql):
        print("Extract sub-selects: ")
        tables_subselect, columns_subselect = Extract_Subselects.process_sql_sub_selects(cleaned_sql)
        tables.extend(tables_subselect)
        columns.extend(columns_subselect)
    
    # Check if the query contains no JOIN clause
    elif "JOIN" not in cleaned_sql:
        print("Extract simple SQL: ")
        tables_no_join, columns_no_join = Extract_Simple_SQL.process_simple_query(cleaned_sql)
        tables.extend(tables_no_join)
        columns.extend(columns_no_join)
    
    # For any other type of SQL query
    else:
        print("Extract general SQL: ")
        tables_all, columns_all = Extract_General_SQL.extract_general_sql(cleaned_sql)
        tables.extend(tables_all)
        columns.extend(columns_all)

    # Create DataFrames
    table_df = pd.DataFrame(tables, columns=["Source", "Table Name", "Table Alias"])
    column_df = pd.DataFrame(columns, columns=["Source", "Table Alias", "Column Name"])
    
    # Output DataFrames
    inner_join_df = pd.merge(table_df, column_df, on = ['Source','Table Alias'], how ='outer')
    
    return table_df, inner_join_df 