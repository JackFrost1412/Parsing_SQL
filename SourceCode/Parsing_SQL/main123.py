# import Main_SQLParsing
# import pandas as pd
# import configparser

# # Khởi tạo configparser
# config = configparser.ConfigParser()

# # Đọc tệp config.ini
# config.read(fr'SourceCode\config.ini')

# # Lấy tên file từ section 'files'
# input_file = config['files']['file_name']



# table_df, inner_join_df = Main_SQLParsing.main_extract_sql_command(sql_file_path)

# # Display the DataFrames 
# print(f"Table, Alias: \n {table_df}")
# print(f"Full table : \n {inner_join_df}")
    

# # Save the DataFrame to an Excel file
# with pd.ExcelWriter('Parsing_SQL\Output\Tables_Columns\FSS_parsing_SQL_sub_selects.xlsx') as writer:
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
# print("Done") 


import os
import pandas as pd
import configparser
from Main_SQLParsing import main_extract_sql_command

# Bước 1: Đọc đường dẫn thư mục từ file config.ini
config = configparser.ConfigParser()
config.read(fr'SourceCode\config.ini')
file_name = config['files']['file_name']


# Bước 2: Tạo đường dẫn tới file Excel để lưu kết quả
file_input = fr"Output\SQL_Job_DS\{file_name}"
file_output = fr"Output\Table_Column\{file_name}_TAB_COL.xlsx"

# Bước 3: Duyệt qua từng file .sql trong thư mục
with pd.ExcelWriter(file_output) as writer:
    for filename in os.listdir(file_input):
        if filename.endswith(".sql"):
            # Bước 4: Đọc tên job (chính là tên file không có phần mở rộng)
            job_name = os.path.splitext(filename)[0]
            
            # Đọc nội dung file .sql
            file_path = os.path.join(file_input, filename)
            
            # Bước 5: Gọi hàm main_extract_sql_command để xử lý câu truy vấn
            table_df, inner_join_df = main_extract_sql_command(file_path)
            
            # Ghi table_df và inner_join_df vào file Excel với tên sheet tương ứng
            table_sheet_name = f"Table Name_Alias"
            full_table_sheet_name = f"Full_Table"
            
            table_df.to_excel(writer, sheet_name=table_sheet_name, index=False)
            inner_join_df.to_excel(writer, sheet_name=full_table_sheet_name, index=False)

print("Done")
