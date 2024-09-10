import Extract_Simple_SQL
import Extract_WITH_CTE
import Extract_Subselects
import pandas as pd

# Điền tên file cần xử lý vào đây
file_name = "JOB nghiệp vụ 2.11"

file_input = fr"Output\SQL_Docx\{file_name}_SQLs.xlsx"
file_output = fr"Output\Tables_Columns\{file_name}_TAB_COL.xlsx"

df = pd.read_excel(file_input)

result = pd.DataFrame(columns=['Heading', 'Table', 'Alias', 'Column'])

# Duyệt qua từng dòng và kiểm tra nếu câu truy vấn bắt đầu bằng WITH
for index, row in df.iterrows():
    heading = row['Heading']
    query = row['SQL Query']
    has_join = row['Has JOIN']
    print(has_join)

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
                'Heading': heading,
                'Table': table_name,
                'Alias': table_alias,
                'Column': column_name
            }, ignore_index=True)

# Loại bỏ các dòng trùng lặp
result = result.drop_duplicates()

# Xuất kết quả ra file Excel
#result.to_excel(file_output, index=False)

print(f"File Excel đã được lưu tại: {file_output}")
