import os
import pandas as pd
import configparser
from SourceCode.Parsing_SQL.Main_SQLParsing import main_extract_sql_command
from SourceCode.Extract_Docx.main import docx_to_excel
from SourceCode.Extract_Job_DataStage.main import job_to_txt, job_to_excel
import time 

def count_sql_files(directory):
    return len([f for f in os.listdir(directory) if f.endswith('.sql')])

start = time.time()
# Đọc đường dẫn thư mục từ file config.ini
config = configparser.ConfigParser()
try:
    config.read('config.ini', encoding='utf-8')
    file = config['files']['file_name']
except (FileNotFoundError, KeyError) as e:
    print(f"Error reading config file: {e}")
    exit(1)
    
file_name, extension = os.path.splitext(file)

all_table_df = []
all_inner_join_df = []

if extension == ".dsx":
    try:
        print("Bắt đầu tiến trình lọc ra các câu truy vấn.\n")
        
        # Xuất ra file chứa các câu truy vấn
        # job_to_excel(file_name)
        job_to_txt(file_name)
        
        print("Kết thúc tiến trình lọc ra các câu truy vấn.\n")
        
        # Tạo đường dẫn tới file Excel để lưu kết quả
        file_input = fr"Output/SQL_Job_DS/{file_name}"
        file_output = fr"Output/Table_Column/{file_name}_TAB_COL.xlsx"
        
        total_files = count_sql_files(file_input)
        files_processed = 0
        
        print("Bắt đầu tiến trình tách các bảng và cột.\n")
        
        # Duyệt qua từng file .sql trong thư mục
        for filename in os.listdir(file_input):
            if filename.endswith(".sql"):
                job_name = os.path.splitext(filename)[0]
                file_path = os.path.join(file_input, filename)
                try:
                    # Đọc nội dung file .sql
                    with open(file_path, 'r') as file:
                        sql_content = file.read()

                    # Phân tách các câu lệnh SQL bằng dấu chấm phẩy
                    sql_queries = sql_content.split(';')
                    
                    for sql_query in sql_queries:
                        sql_query = sql_query.strip()
                        if sql_query:
                            # Gọi hàm main_extract_sql_command để xử lý câu truy vấn
                            table_df, inner_join_df = main_extract_sql_command(sql_query)
                            
                            # Thêm cột job_name vào từng DataFrame
                            table_df['job_name'] = job_name
                            all_table_df.append(table_df)
                        
                            inner_join_df['job_name'] = job_name
                            all_inner_join_df.append(inner_join_df)
                except (FileNotFoundError, IOError) as e:
                    print(f"Lỗi đọc file {filename}: {e}")
                    
            files_processed += 1
            print(fr"Đã xử lý {files_processed}/{total_files} file.", end='\r')
        print()
        print("\nKết thúc tiến trình tách các bảng và cột.\n")
    except Exception as e:
        print(f"Lỗi xử lý .dsx files: {e}")
    
    try:
        final_table_df = pd.concat(all_table_df, ignore_index=True).drop_duplicates()
        final_inner_join_df = pd.concat(all_inner_join_df, ignore_index=True).drop_duplicates()
        
        with pd.ExcelWriter(file_output) as writer:
            table_sheet_name = f"Table Name_Alias"
            full_table_sheet_name = f"Full_Table"
            
            final_table_df.to_excel(writer, sheet_name=table_sheet_name, index=False)
            final_inner_join_df.to_excel(writer, sheet_name=full_table_sheet_name, index=False)
    except Exception as e:
        print(f"Error writing to Excel: {e}")
        
    print(f"File Excel các bảng và cột đã được lưu tại: {file_output}.")

else:
    try:
        print("Bắt đầu tiến trình lọc ra các câu truy vấn.\n")
        
        # Xuất ra file Excel chứa các câu truy vấn từ docx
        docx_to_excel(file_name)

        print("Kết thúc tiến trình lọc ra các câu truy vấn.\n")
        
        # Tạo đường dẫn tới file Excel để lưu kết quả
        file_input = fr"Output/SQL_Docx/{file_name}_SQLs.xlsx"
        file_output = fr"Output/Table_Column/{file_name}_TAB_COL.xlsx"

        try:
            df = pd.read_excel(file_input)
        except (FileNotFoundError, pd.errors.ExcelFileError) as e:
            print(f"Error reading Excel file {file_input}: {e}")
            exit(1)

        total_files = len(df)
        files_processed = 0
        
        # Duyệt qua từng dòng trong DataFrame
        for index, row in df.iterrows():
            heading = row['Heading']
            sql_query = row['SQL Query']
            try:
                # Gọi hàm main_extract_sql_command để xử lý câu truy vấn SQL
                table_df, inner_join_df = main_extract_sql_command(sql_query)
                
                table_df['Heading'] = heading
                all_table_df.append(table_df)
                    
                inner_join_df['Heading'] = heading
                all_inner_join_df.append(inner_join_df)
            except Exception as e:
                print(f"Error processing SQL query in row {index}: {e}")
            
            files_processed += 1
            print(fr"Đã xử lý {files_processed}/{total_files} truy vấn.", end='\r')
        print()
        print("\nKết thúc tiến trình tách các bảng và cột.\n")
    except Exception as e:
        print(f"Error processing docx files: {e}")
    
    try:
        final_table_df = pd.concat(all_table_df, ignore_index=True).drop_duplicates()
        final_inner_join_df = pd.concat(all_inner_join_df, ignore_index=True).drop_duplicates()

        with pd.ExcelWriter(file_output) as writer:
            # Tạo tên sheet cho các kết quả
            table_sheet_name = f"Table_Alias"
            full_table_sheet_name = f"Full_Table"
            
            # Ghi table_df và inner_join_df vào các sheet tương ứng trong file Excel
            final_table_df.to_excel(writer, sheet_name=table_sheet_name, index=False)
            final_inner_join_df.to_excel(writer, sheet_name=full_table_sheet_name, index=False)
    except Exception as e:
        print(f"Error writing to Excel: {e}")
        
    print(f"File Excel các bảng và cột đã được lưu tại: {file_output}.")
    
end = time.time()
print(f"\nThời gian xử lý hết: {end-start} giây.\n")
