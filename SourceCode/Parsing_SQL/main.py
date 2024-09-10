import Extract_WITH_CTE
import Extract_Subselects
import pandas as pd
import Extract_tbl_name

# Điền tên file cần xử lý vào đây
file_name = "BIDV_MIS_20240813_DMT_100_job"

file_input = fr"Output\SQL_Job_DS\{file_name}_SQLs.xlsx"
file_output = fr"Output\Tables_Columns\{file_name}_TAB_COL.xlsx"

df = pd.read_excel(file_input)

result = pd.DataFrame(columns=['job', 'table_name', 'alias', 'column_name'])

# Duyệt qua từng dòng và sử dụng extract_with_cte
for index, row in df.iterrows():
    job_name = row['Job Name']
    query = row['SQL Query']

    # Gọi hàm extract_with_cte để lấy bảng và cột
    table_df, column_df = Extract_WITH_CTE.process_sql_query_to_dfs(query)

    # Duyệt qua từng bảng alias và nối với thông tin cột tương ứng
    for _, table_row in table_df.iterrows():
        table_name = table_row['Table Name']
        table_alias = table_row['Table Alias']
        
        # Lọc các cột tương ứng với alias của bảng
        related_columns = column_df[column_df['Table Alias'] == table_alias]
        
        # Duyệt qua từng cột tương ứng và thêm vào DataFrame kết quả
        for _, col_row in related_columns.iterrows():
            column_name = col_row['Column Name']
            result = result._append({
                'job': job_name,
                'table_name': table_name,
                'alias': table_alias,
                'column_name': column_name
            }, ignore_index=True)

result = result.drop_duplicates()

result.to_excel(file_output, index=False)