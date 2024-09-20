import sqlparse
import pandas as pd
from sqlparse.sql import IdentifierList, Identifier, Parenthesis
from sqlparse.tokens import Keyword, DML
import SourceCode.Parsing_SQL.Extract_Tbl_Col as Extract_Tbl_Col

def extract_nested_subselects_and_rest(sql):
    parsed = sqlparse.parse(sql)
    subselects_with_names = []
    # rest_of_sql = deque()
    
    # Helper function to recursively find sub-selects
    def find_subselects_and_rest(token, alias=None, level=0):
        if isinstance(token, Parenthesis):
            # Check for a sub-select inside parentheses
            if any(t.ttype is DML and t.value == 'SELECT' for t in token.flatten()):
                stripped_subselect = str(token).strip('()')
                subselects_with_names.append((alias, stripped_subselect, level))  # Add the level of nesting
                # Recursively look inside the sub-select to find deeper sub-selects
                for subtoken in token.tokens:
                    find_subselects_and_rest(subtoken, alias, level + 1)
                return  # Skip adding this sub-select to the rest of SQL

            # Continue processing the parenthesis tokens
            for subtoken in token.tokens:
                find_subselects_and_rest(subtoken, alias, level)

        elif isinstance(token, Identifier) or isinstance(token, IdentifierList):
            # Process identifiers or identifier lists
            for subtoken in token.tokens:
                if isinstance(subtoken, Parenthesis):
                    find_subselects_and_rest(subtoken, token.get_real_name(), level)
                # else:
                #     rest_of_sql.append(str(subtoken))
                    
        elif token.is_group:
            # Process other grouped tokens
            for subtoken in token.tokens:
                find_subselects_and_rest(subtoken, alias, level)
                
        # else:
        #     # Add other tokens to the rest of SQL
        #     rest_of_sql.append(str(token))

    # Process each statement in the parsed SQL
    for statement in parsed:
        find_subselects_and_rest(statement)

    # Combine rest of SQL into a string
    # rest_of_sql_combined = ''.join(rest_of_sql).strip()

    return subselects_with_names

# Function to remove level 1 sub-selects from the original SQL
def remove_level_1_subselects(sql, subselects_with_names):
    # Work with the original SQL string and replace level 1 sub-selects
    modified_sql = sql
    for alias, subselect, level in subselects_with_names:
        if level == 0:
            # Replace sub-select at level 1 with a placeholder "()"
            modified_sql = modified_sql.replace(subselect, "")
    return modified_sql


# New function to process SQL and add 'Source' column
def process_sql_sub_selects(sql):
    # Extract sub-selects and the main SQL command
    subselects_with_names = extract_nested_subselects_and_rest(sql)  # Assume you have this function
    remaining_sql = remove_level_1_subselects(sql, subselects_with_names)  # Assume you have this function
    # for sub_select in cleaned_subselects: 
    #     print(f"alias: {sub_select[0]}, sub-select: {sub_select[1]}")
    # print(f"main_sql: \n",reconstructed_sql)
    
    # Prepare lists to store results
    all_tables_with_aliases = []
    all_alias_column_pairs = []

    # Process sub-selects
    for alias, subselect, level in subselects_with_names:
        source = alias if alias else 'sub-select'
        tables_with_aliases = Extract_Tbl_Col.extract_table_names_with_aliases(subselect)
        alias_column_pairs = Extract_Tbl_Col.extract_alias_column_pairs(subselect)
        columns_without_alias = Extract_Tbl_Col.extract_columns_without_dot(subselect)
        
        all_tables_with_aliases.extend([(source, table, alias) for table, alias in tables_with_aliases])
        all_alias_column_pairs.extend([(source, alias, column) for alias, column in alias_column_pairs])
        all_alias_column_pairs.extend([(source, None, column) for column in columns_without_alias])
        
    # Process the main SQL command
    main_tables_with_aliases = Extract_Tbl_Col.extract_table_names_with_aliases(remaining_sql)
    main_alias_column_pairs = Extract_Tbl_Col.extract_alias_column_pairs(remaining_sql)
    main_col_without_alias = Extract_Tbl_Col.extract_columns_without_dot(remaining_sql)
    # print(f"Main sql column: \n ",main_col_without_alias)
    
    all_tables_with_aliases.extend([('Main_SQL', table, alias) for table, alias in main_tables_with_aliases])
    all_alias_column_pairs.extend([('Main_SQL', alias, column) for alias, column in main_alias_column_pairs])
    all_alias_column_pairs.extend([("Main_SQL", None, column) for column in main_col_without_alias])
    # # Create DataFrames
    # df_tables_with_aliases = pd.DataFrame(all_tables_with_aliases, columns=['Source', 'Table Name', 'Table Alias'])
    # df_alias_column_pairs = pd.DataFrame(all_alias_column_pairs, columns=['Source', 'Table Alias', 'Column Name'])

    # # Return Output DataFrames
    # inner_join_df = pd.merge(df_tables_with_aliases, df_alias_column_pairs, on = ['Source','Table Alias'], how ='outer')
    return all_tables_with_aliases, all_alias_column_pairs


