from Docx_Text import extract_sql_code

# Đọc file Word và trích xuất SQL code vào DataFrame
df_sql = extract_sql_code('Input/Docx/JOB nghiệp vụ 2.11.docx')

output_file = 'Output/SQL_Docx/docx_text_queries.xlsx'

# Xuất file Excel
df_sql.to_excel(output_file, index=False)

print(f"File Excel đã được lưu tại: {output_file}")