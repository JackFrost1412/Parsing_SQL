import sqlparse
from sqlparse.tokens import Keyword, DML, Keyword
import Extract_Nested_SQL
import pandas as pd

def extract_ctes_and_rest(sql):
    parsed = sqlparse.parse(sql)[0]
    cte_dict = {}
    main_sql_parts = []
    in_cte_block = False

    for token in parsed.tokens:
        if token.ttype is Keyword.CTE and token.value.upper() == 'WITH':
            in_cte_block = True
            continue

        if in_cte_block:
            if token.ttype is None:  # The CTE block is in a single token
                # Extract CTEs from the token value
                cte_definitions = token.value.split('),')
                
                for cte_def in cte_definitions:
                    if 'AS' in cte_def:
                        
                        parts = cte_def.split('AS', 1)
                        cte_name = parts[0].strip().rstrip(')')
                        cte_sql = parts[1].strip().lstrip('(')
                        cte_dict[cte_name] = cte_sql

                in_cte_block = False
            # Skip tokens that are part of CTE block
            continue

        # Collect remaining SQL after CTEs
        if token.ttype in (DML, Keyword, None):
            main_sql_parts.append(token.value.strip())

    # Join the parts of the main SQL command
    main_sql = ' '.join(main_sql_parts).strip()
    return cte_dict, main_sql   

# Example SQL with CTEs
def process_sql_query_to_dfs(sql):
    # Extract CTEs and main SQL command
    cte_dict, main_sql = extract_ctes_and_rest(sql)
    # print(f"Extracted main of SQL command: {main_sql}")
    # print("----------------------------------------")
    # Initialize lists to store data
    table_data = []
    column_data = []
    
    # Process CTEs
    for cte_name, cte_sql in cte_dict.items():
        # Extract tables and columns
        tables_with_aliases = Extract_Nested_SQL.extract_table_names_with_aliases(cte_sql)
        alias_column_pairs = Extract_Nested_SQL.extract_alias_column_pairs(cte_sql)
        
        # Append tables to the table_data list
        table_data.extend([(cte_name, table, alias) for table, alias in tables_with_aliases])
        
        # Append columns to the column_data list
        column_data.extend([(cte_name, alias, col) for alias, col in alias_column_pairs])
        
    # Process main SQL command
    tables_with_aliases = Extract_Nested_SQL.extract_table_names_with_aliases(main_sql)
    alias_column_pairs = Extract_Nested_SQL.extract_alias_column_pairs(main_sql)
    
    # Append main SQL tables to the table_data list
    table_data.extend([("Main_SQL", table, alias) for table, alias in tables_with_aliases])
    
    # Append main SQL columns to the column_data list
    column_data.extend([("Main_SQL", alias, col) for alias, col in alias_column_pairs])
    
    # Create DataFrames
    table_df = pd.DataFrame(table_data, columns=["Source", "Table Name", "Table Alias"])
    column_df = pd.DataFrame(column_data, columns=["Source", "Table Alias", "Column Name"])
    
    return table_df, column_df
