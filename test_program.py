import SourceCode.Parsing_SQL.Main_SQLParsing as Main_SQLParsing
import pandas as pd
import time 

start = time.time()
sql_file_path = r'Output\SQL_Job_DS\BIDV_MIS_20240813_DMT_100_job\PAR_NZ_DMMIS_ADMIN_CST_PD_ANL_FCT_DAILY_CADENCIE_EXTRA_Dels.sql'

with open(sql_file_path, 'r') as file:
    sql_content = file.read()

table_df, column_df = Main_SQLParsing.main_extract_sql_command(sql_content)
# table_df = table_df.drop_duplicates()
# column_df = column_df.drop_duplicates()
# Display the DataFrames
print(f"Table, Alias: \n {table_df}")
print(f"Full table : \n {column_df}")
    
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
end = time.time()
print(f"Time taken: {end - start} seconds")