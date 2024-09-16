import os
import pandas as pd
import configparser
from SourceCode.Parsing_SQL.Main_SQLParsing import main_extract_sql_command
from SourceCode.Extract_Docx.main import docx_to_excel
from SourceCode.Extract_Job_DataStage.main import job_to_txt, job_to_excel

# Đọc đường dẫn thư mục từ file config.ini
config = configparser.ConfigParser()
config.read('config.ini', encoding='utf-8')
file = config['files']['file_name']

file_name, extension = os.path.splitext(file)

if extension == ".dsx":
    # Xuất ra file chứa các câu truy vấn
    job_to_excel(file_name)
    job_to_txt(file_name)

    # Tạo đường dẫn tới file Excel để lưu kết quả
    file_input = fr"Output\SQL_Job_DS\{file_name}"
    file_output = fr"Output\Table_Column\{file_name}_TAB_COL.xlsx"

    # Duyệt qua từng file .sql trong thư mục
    with pd.ExcelWriter(file_output) as writer:
        for filename in os.listdir(file_input):
            if filename.endswith(".sql"):
                # Đọc tên job (chính là tên file không có phần mở rộng)
                job_name = os.path.splitext(filename)[0]
                
                # Đọc nội dung file .sql
                file_path = os.path.join(file_input, filename)
                with open(file_path, 'r') as file:
                    sql_query = file.read()
                    
                # Gọi hàm main_extract_sql_command để xử lý câu truy vấn
                table_df, inner_join_df = main_extract_sql_command(sql_query)
                
                # Ghi table_df và inner_join_df vào file Excel với tên sheet tương ứng
                table_sheet_name = f"Table Name_Alias"
                full_table_sheet_name = f"Full_Table"
                
                table_df.to_excel(writer, sheet_name=table_sheet_name, index=False)
                inner_join_df.to_excel(writer, sheet_name=full_table_sheet_name, index=False)

else:
    docx_to_excel(file_name)
    
    # Tạo đường dẫn tới file Excel để lưu kết quả
    file_input = fr"Output\SQL_Docx\{file_name}_SQLs.xlsx"
    file_output = fr"Output\Table_Column\{file_name}_TAB_COL.xlsx"
    
    df = pd.read_excel(file_input)
    
    with pd.ExcelWriter(file_output) as writer:
        # Duyệt qua từng dòng trong DataFrame
        for index, row in df.iterrows():
            # Lấy tên job từ cột Heading và câu lệnh SQL từ cột SQL Query
            job_name = row['Heading']
            sql_query = row['SQL Query']

            # Gọi hàm main_extract_sql_command để xử lý câu truy vấn SQL
            table_df, inner_join_df = main_extract_sql_command(sql_query)
            print(table_df)
            # Tạo tên sheet cho các kết quả
            table_sheet_name = f"Table_Alias"
            full_table_sheet_name = f"Full_Table"
            
            # Ghi table_df và inner_join_df vào các sheet tương ứng trong file Excel
            table_df.to_excel(writer, sheet_name=table_sheet_name, index=False)
            inner_join_df.to_excel(writer, sheet_name=full_table_sheet_name, index=False)
    
print("Done")