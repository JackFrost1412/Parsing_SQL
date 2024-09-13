import Main_SQLParsing
import pandas as pd

# Extract the sub-selects from the SQL query
sql_file_path = r'SourceCode\Parsing_SQL\Input_SQL_command\rest_sql.sql'

table_df, inner_join_df = Main_SQLParsing.main_extract_sql_command(sql_file_path)

# Display the DataFrames 
print(f"Table, Alias: \n {table_df}")
print(f"Full table : \n {inner_join_df}")
    

# Save the DataFrame to an Excel file
with pd.ExcelWriter('Output\Tables_Columns\FSS_parsing_SQL_sub_selects.xlsx') as writer:
    table_df.to_excel(
        writer,
        sheet_name='Table Name, Alias',
        index=False
    )
    inner_join_df.to_excel(
        writer,
        sheet_name='Full_table',
        index=False
    )
print("Done") 