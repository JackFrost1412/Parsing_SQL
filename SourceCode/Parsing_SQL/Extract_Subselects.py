import sqlparse
from sqlparse.sql import IdentifierList, Identifier, Parenthesis
from sqlparse.tokens import Keyword, DML
import Extract_Tbl_Col

def extract_subselects_and_rest(sql):
    parsed = sqlparse.parse(sql)
    subselects_with_names = []
    rest_of_sql = []
    level = 0
    
    def find_subselects_and_rest(token, alias=None):
        nonlocal level
        if isinstance(token, Parenthesis):
            level += 1
            if any(t.ttype is DML and t.value.upper() == 'SELECT' for t in token.tokens):
                subselects_with_names.append((alias, str(token)))
                for subtoken in token.tokens:
                    find_subselects_and_rest(subtoken)
                level -= 1
                return
            
            for subtoken in token.tokens:
                find_subselects_and_rest(subtoken, alias)
            level -= 1
        elif isinstance(token, Identifier) or isinstance(token, IdentifierList):
            for subtoken in token.tokens:
                if isinstance(subtoken, Parenthesis):
                    find_subselects_and_rest(subtoken, token.get_real_name())
                else:
                    rest_of_sql.append(str(subtoken))
        elif token.is_group:
            for subtoken in token.tokens:
                find_subselects_and_rest(subtoken)
        else:
            rest_of_sql.append(str(token))

    for statement in parsed:
        find_subselects_and_rest(statement)

    rest_of_sql_combined = ''.join(rest_of_sql).strip()
    return subselects_with_names, rest_of_sql_combined

def clean_subselects(subselects_with_names):
    cleaned_subselects = []
    for alias, subselect in subselects_with_names:
        subselect = subselect.strip('()')
        cleaned_subselects.append((alias, subselect))
    return cleaned_subselects

# New function to process SQL and add 'Source' column
def process_sql_sub_selects(sql):
    # Extract sub-selects and the main SQL command
    subselects_with_names, rest_of_sql_command = extract_subselects_and_rest(sql)  # Assume you have this function
    cleaned_subselects = clean_subselects(subselects_with_names)  # Assume you have this function

    # Prepare lists to store results
    all_tables_with_aliases = []
    all_alias_column_pairs = []

    # Process sub-selects
    for alias, subselect in cleaned_subselects:
        source = alias if alias else 'sub-select'
        tables_with_aliases = Extract_Tbl_Col.extract_table_names_with_aliases(subselect)
        alias_column_pairs = Extract_Tbl_Col.extract_alias_column_pairs(subselect)
        columns_without_alias = Extract_Tbl_Col.extract_columns_without_alias(subselect)
        
        # Add source information to each entry
        tables_with_aliases_with_source = [(source, table, alias) for table, alias in tables_with_aliases]
        alias_column_pairs_with_source = [(source, alias, column) for alias, column in alias_column_pairs]
        columns_without_alias_source = [(source, None, column) for column in columns_without_alias]
        
        all_tables_with_aliases.extend(tables_with_aliases_with_source)
        all_alias_column_pairs.extend(alias_column_pairs_with_source)
        all_alias_column_pairs.extend(columns_without_alias_source)
        
    # Process the main SQL command
    main_tables_with_aliases = Extract_Tbl_Col.extract_table_names_with_aliases(rest_of_sql_command)
    main_alias_column_pairs = Extract_Tbl_Col.extract_alias_column_pairs(rest_of_sql_command)
    main_col_without_alias = Extract_Tbl_Col.extract_columns_without_alias(rest_of_sql_command)
    
    # Add 'main SQL' as the source
    main_tables_with_aliases_with_source = [('Main_SQL', table, alias) for table, alias in main_tables_with_aliases]
    main_alias_column_pairs_with_source = [('Main_SQL', alias, column) for alias, column in main_alias_column_pairs]
    main_col_without_alias_with_source = [("Main_SQL", None, column) for column in main_col_without_alias]
    
    all_tables_with_aliases.extend(main_tables_with_aliases_with_source)
    all_alias_column_pairs.extend(main_alias_column_pairs_with_source)
    all_alias_column_pairs.extend(main_col_without_alias_with_source)
    # # Create DataFrames
    # df_tables_with_aliases = pd.DataFrame(all_tables_with_aliases, columns=['Source', 'Table Name', 'Table Alias'])
    # df_alias_column_pairs = pd.DataFrame(all_alias_column_pairs, columns=['Source', 'Table Alias', 'Column Name'])

    # # Return Output DataFrames
    # inner_join_df = pd.merge(df_tables_with_aliases, df_alias_column_pairs, on = ['Source','Table Alias'], how ='outer')
    return all_tables_with_aliases, all_alias_column_pairs


