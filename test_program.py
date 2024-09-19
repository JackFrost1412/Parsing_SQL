import SourceCode.Parsing_SQL.Main_SQLParsing as Main_SQLParsing
import pandas as pd

sql_file_path = r'SourceCode\Parsing_SQL\Input_SQL_command\sql(9).sql'

with open(sql_file_path, 'r') as file:
    sql_content = file.read()

table_df, inner_join_df = Main_SQLParsing.main_extract_sql_command(sql_content)

# Display the DataFrames
print(f"Table, Alias: \n {table_df}")
print(f"Full table : \n {inner_join_df}")
    
# Save the DataFrame to an Excel file
# with pd.ExcelWriter(r'Output\Table_Column\FSS_parsing_SQL_CTE_with.xlsx') as writer:
#     table_df.to_excel(
#         writer,
#         sheet_name='Table Name, Alias',
#         index=False
#     )
#     inner_join_df.to_excel(
#         writer,
#         sheet_name='Full_table',
#         index=False
#     )
print("Done") 