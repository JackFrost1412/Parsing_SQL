from SourceCode.Extract_Docx.Docx_Text import extract_sql_code


def docx_to_excel(file_name):
    file_input = fr"Input\Docx\{file_name}.docx"
    file_output = fr"Output\SQL_Docx\{file_name}_SQLs.xlsx"
    
    # Đọc file Word và trích xuất SQL code vào DataFrame
    df_sql = extract_sql_code(file_input)

    # Xuất file Excel (không cần tham số encoding)
    df_sql.to_excel(file_output, index=False)
    
    print(f"File Excel đã được lưu tại: {file_output}")

# Điền tên file cần xử lý vào đây
# file_name = "JOB nghiệp vụ 2.11"
# docx_to_excel(file_name)
