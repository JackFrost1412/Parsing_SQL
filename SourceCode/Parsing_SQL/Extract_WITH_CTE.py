import sqlparse
from sqlparse.tokens import Keyword, DML, Keyword
import SourceCode.Parsing_SQL.Extract_Tbl_Col as Extract_Tbl_Col

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
def process_sql_with_ctes(sql):
    # Extract CTEs and main SQL command
    cte_dict, main_sql = extract_ctes_and_rest(sql)
    # print(f"Extracted main of SQL command: {main_sql}")
    # print("----------------------------------------")
    # print(f"Extracted CTEs: {cte_dict}")
    # Initialize lists to store data
    table_data = []
    column_data = []
    
    # Process CTEs
    for cte_name, cte_sql in cte_dict.items():
        # Extract tables and columns
        tables_with_aliases = Extract_Tbl_Col.extract_table_names_with_aliases(cte_sql)
        alias_column_pairs = Extract_Tbl_Col.extract_alias_column_pairs(cte_sql)
        col_without_alias = Extract_Tbl_Col.extract_columns_without_dot(cte_sql)
        
        # Append tables to the table_data list
        table_data.extend([(cte_name, table, alias) for table, alias in tables_with_aliases])
        
        # Append columns to the column_data list
        column_data.extend([(cte_name, alias, col) for alias, col in alias_column_pairs])
        # Append columns to the column_data list
        column_data.extend([(cte_name, None, col) for  col in col_without_alias])
        
    # Process main SQL command
    tables_with_aliases = Extract_Tbl_Col.extract_table_names_with_aliases(main_sql)
    alias_column_pairs = Extract_Tbl_Col.extract_alias_column_pairs(main_sql)
    col_without_alias_main = Extract_Tbl_Col.extract_columns_without_dot(main_sql)
    # Append main SQL tables to the table_data list
    table_data.extend([("Main_SQL", table, alias) for table, alias in tables_with_aliases])
    
    # Append main SQL columns to the column_data list
    column_data.extend([("Main_SQL", alias, col) for alias, col in alias_column_pairs])
    column_data.extend([("Main_SQL", None, col) for col in col_without_alias_main])
    
    # # Create DataFrames
    # table_df = pd.DataFrame(table_data, columns=["Source", "Table Name", "Table Alias"])
    # column_df = pd.DataFrame(column_data, columns=["Source", "Table Alias", "Column Name"])
    
    # # Output DataFrames
    # inner_join_df = pd.merge(table_df, column_df, on = ['Source','Table Alias'], how ='outer')
    return table_data, column_data
