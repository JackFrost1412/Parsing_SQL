from Docx_Text import extract_sql_code

file_input = 'Input/Docx/JOB nghiệp vụ 2.11.docx'
file_output = 'Output/SQL_Docx/docx_text_queries.xlsx'

# Đọc file Word và trích xuất SQL code vào DataFrame
df_sql = extract_sql_code(file_input)

# Xuất file Excel
df_sql.to_excel(file_output, index=False)

print(f"File Excel đã được lưu tại: {file_output}")