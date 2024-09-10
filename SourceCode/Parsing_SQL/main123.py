import Extract_WITH_CTE
import Extract_Subselects
import Extract_Simple_SQL
import pandas as pd
import sqlparse
import openpyxl


# Read the SQL file
def read_sql_file(file_path):
    with open(file_path, 'r') as file:
        return file.read()
       
# # Extract the sub-selects from the SQL query
# sql_file_path = r'SourceCode\Parsing_SQL\Input_SQL_command\doc.sql'
# sql_content = read_sql_file(sql_file_path)

# output_df = Extract_Subselects.process_sql_with_source(sql_content)

# # Display the DataFrames 
# print("Extracted Sub-Selects:")
# print(output_df)
    
# Extract the SQL with CTEs from the SQL query
sql_file_path = r'E:\Parsing_SQL\SourceCode\Parsing_SQL\Input_SQL_command\sql(9).sql'
sql_ctes = read_sql_file(sql_file_path)
   
formatted_sql = sqlparse.format(sql_ctes).upper()

# Process the SQL query to get DataFrames
inner_join_df_cte = Extract_WITH_CTE.process_sql_query_to_dfs(formatted_sql)

# Display the DataFrames
# print("Table Names and Aliases DataFrame:")
# print(table_df)
# print("\nColumn Names and Aliases DataFrame:")
# print(column_df)
print("DataFrame of Table Name, Alias, Columns:")
# inner_join_df_cte = pd.merge(table_df, column_df, on = ['Source','Table Alias'], how ='inner')
print(inner_join_df_cte)

# Extract simple SQL query
# print("Extracted simple SQL query:")
# sql_file_path = r'D:\FSS_RnD\SQL_command\select_simple.sql' 
# simple_sql = read_sql_file(sql_file_path)
# formatted_sql = sqlparse.format(simple_sql).upper()
   
# tables_with_aliases = Extract_tbl_name.extract_table_names_with_aliases(formatted_sql)
# df_tbl_alias = pd.DataFrame(tables_with_aliases, columns=['Tables', 'Ailases'])
# # print("Extracted tables with aliases:")
# # print(df_tbl_alias)
# col_with_alias = Extract_tbl_name.extract_alias_column_pairs(formatted_sql)
# df_col_alias = pd.DataFrame(col_with_alias,columns =['Ailases', 'Columns'])
# # print(df_col_alias)
# # inner join 2 df
# print("DataFrame of Table Name, Alias, Columns:")
# inner_join_df_simple = pd.merge(df_tbl_alias, df_col_alias, on ='Ailases', how ='inner')
# print(inner_join_df_simple)


# # Save the DataFrame to an Excel file
# with pd.ExcelWriter('Output\FSS_parsing_SQL.xlsx') as writer:
#     inner_join_df_simple.to_excel(
#         writer,
#         sheet_name='Table Name, Alias, Columns',
#         index=False
#     )
#     df_col_alias.to_excel(
#         writer,
#         sheet_name='Alias, Columns',
#         index=False
#     )
# print("Done") 

## Extract the sub-selects from the SQL query
# sql_file_path = r'SourceCode\Parsing_SQL\Input_SQL_command\SQL_simple.sql'
# sql_content = read_sql_file(sql_file_path)
# output_df = Extract_Simple_SQL.process_simple_query(sql_content)
# print(output_df)