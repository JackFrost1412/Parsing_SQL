from SourceCode.Extract_Docx.Docx_Text import extract_sql_code


def docx_to_excel(file_name):
    file_input = fr"Input/Docx/{file_name}.docx"
    file_output = fr"Output/SQL_Docx/{file_name}_SQLs.xlsx"
    
    # Đọc file Word và trích xuất SQL code vào DataFrame
    try:
        df_sql = extract_sql_code(file_input)
    except FileNotFoundError as e:
        print(f"Error: File not found - {file_input}. Exception: {e}")
    except IOError as e:
        print(f"Error: IOError when reading file - {file_input}. Exception: {e}")

    # Xuất file Excel
    try:
        df_sql.to_excel(file_output, index=False)
    except IOError as e:
        print(f"Error: IOError when writing file - {file_output}. Exception: {e}")
    
    print(f"File Excel các câu truy vấn đã được lưu tại: {file_output}.")

# Điền tên file cần xử lý vào đây
# file_name = "JOB nghiệp vụ 2.11"
# docx_to_excel(file_name)
