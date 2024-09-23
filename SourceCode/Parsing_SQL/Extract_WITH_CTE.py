import sqlparse
from sqlparse.tokens import Keyword, DML, Keyword
from sqlparse.sql import Identifier, IdentifierList
import SourceCode.Parsing_SQL.Extract_Tbl_Col as Extract_Tbl_Col

def extract_ctes_and_rest(sql):
    parsed = sqlparse.parse(sql)[0]
    cte_dict = {}
    main_sql_parts = []
    in_cte_block = False
    cte_block_processed = False

    for token in parsed.tokens:
        if token.ttype is Keyword.CTE and token.value == 'WITH':
            in_cte_block = True
            continue

        if in_cte_block and not cte_block_processed:
            # CTE block, look for CTE definitions and split at AS
            if isinstance(token, IdentifierList):
                # There could be multiple CTEs separated by commas
                for identifier in token.get_identifiers():
                    process_cte(identifier, cte_dict)
                cte_block_processed = True
            elif isinstance(token, Identifier):
                # Single CTE
                process_cte(token, cte_dict)
                cte_block_processed = True
            continue
        
        # After processing CTEs, switch to collecting the main SQL
        if cte_block_processed:
            main_sql_parts.append(str(token).strip())

    # Join the parts of the main SQL command
    main_sql = ' '.join(main_sql_parts).strip()
    return cte_dict, main_sql

def process_cte(token, cte_dict):
    """Helper function to process each CTE and extract its name and SQL."""
    cte_name = None
    cte_sql = None
    as_keyword_found = False
    cte_sql_tokens = []

    for sub_token in token.tokens:
        if sub_token.ttype is Keyword and sub_token.value == 'AS':
            as_keyword_found = True
        elif not as_keyword_found:
            # Before the 'AS', it's part of the CTE name
            if cte_name is None:
                cte_name = sub_token.value.strip().rstrip(')')
        else:
            # After the 'AS', it's part of the CTE SQL
            cte_sql_tokens.append(sub_token.value)

    if cte_name and cte_sql_tokens:
        cte_sql = ''.join(cte_sql_tokens).strip().lstrip('(').rstrip(')')
        cte_dict[cte_name] = cte_sql
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
        col_without_alias = Extract_Tbl_Col.extract_column_names_without_dot(cte_sql)
        
        # Append tables to the table_data list
        table_data.extend([(cte_name, table, alias) for table, alias in tables_with_aliases])
        # Append columns to the column_data list
        column_data.extend([(cte_name, alias, col) for alias, col in alias_column_pairs])
        # Append columns to the column_data list
        column_data.extend([(cte_name, None, col) for  col in col_without_alias])
        
    # Process main SQL command
    tables_with_aliases = Extract_Tbl_Col.extract_table_names_with_aliases(main_sql)
    alias_column_pairs = Extract_Tbl_Col.extract_alias_column_pairs(main_sql)
    col_without_alias_main = Extract_Tbl_Col.extract_column_names_without_dot(main_sql)
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
