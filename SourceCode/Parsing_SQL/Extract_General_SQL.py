import SourceCode.Parsing_SQL.Extract_Tbl_Col as Extract_Tbl_Col

def extract_general_sql(sql_query):
    table_data = []
    column_data = []

    # Process main SQL command
    tables_with_aliases = Extract_Tbl_Col.extract_table_names_with_aliases(sql_query)
    alias_column_pairs = Extract_Tbl_Col.extract_alias_column_pairs(sql_query)
    col_without_alias_main = Extract_Tbl_Col.extract_columns_without_dot(sql_query)

    # Append main SQL tables to the table_data list
    table_data.extend([("Main_SQL", table, alias) for table, alias in tables_with_aliases])
    
    # Append main SQL columns to the column_data list
    column_data.extend([("Main_SQL", alias, col) for alias, col in alias_column_pairs])
    
    for table_name in tables_with_aliases:
        column_data.extend([("Main_SQL", table_name[0], col) for col in col_without_alias_main])
    
    return table_data, column_data