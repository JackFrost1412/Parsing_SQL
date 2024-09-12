import Extract_Subselects
import Extract_WITH_CTE
import Extract_Simple_SQL
import Extract_General_SQL
import pandas as pd 
import sqlparse

def read_sql_file(file_path):
    
    with open(file_path, 'r') as file:
        return file.read()
    
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

    tables = []
    columns = []
    
    # Check if the query contains a WITH CTE clause
    if "WITH" in sql_query:
        formatted_sql = sqlparse.format(sql_query).upper()
        tables_cte, columns_cte = Extract_WITH_CTE.process_sql_with_ctes(formatted_sql)
        tables.extend(tables_cte)
        columns.extend(columns_cte)
    
    # Check if the query contains sub-selects
    elif "SELECT" in sql_query and "(" in sql_query:
        tables_subselect, columns_subselect = Extract_Subselects.process_sql_sub_selects(sql_query)
        tables.extend(tables_subselect)
        columns.extend(columns_subselect)
    
    # Check if the query contains no JOIN clause
    elif "JOIN" not in sql_query:
        tables_no_join, columns_no_join = Extract_Simple_SQL.process_simple_query(sql_query)
        tables.extend(tables_no_join)
        columns.extend(columns_no_join)
    
    # For any other type of SQL query
    else:
        tables_all, columns_all = Extract_General_SQL.extract_general_sql(sql_query)
        tables.extend(tables_all)
        columns.extend(columns_all)
    
    # Create DataFrames
    table_df = pd.DataFrame(tables, columns=["Source", "Table Name", "Table Alias"])
    column_df = pd.DataFrame(columns, columns=["Source", "Table Alias", "Column Name"])
    
    # Output DataFrames
    inner_join_df = pd.merge(table_df, column_df, on = ['Source','Table Alias'], how ='outer')
    
    return table_df, inner_join_df 
    
