import pandas as pd
from SourceCode.Extract_Job_DataStage.Job_DS_to_Excel import extract_jobs_to_excel
from SourceCode.Extract_Job_DataStage.Job_DS_to_sql import extract_jobs_to_sql

# Xuất file Job dưới dạng Excel
def job_to_excel(file_name):
    # Đường dẫn input và output
    file_input = fr"Input/Job_DataStage/{file_name}.dsx"
    file_output = fr"Output/SQL_Job_DS/{file_name}_SQLs.xlsx"

    # Đọc nội dung của file .dsx
    try:
        with open(file_input, 'r', encoding='utf-8', errors='replace') as file:
            dsx_content = file.read()
    except FileNotFoundError as e:
        print(f"File {file_input} không tồn tại: {e}")

    # Gọi hàm để trích xuất tên job và các truy vấn SQL
    job_queries = extract_jobs_to_excel(dsx_content)

    df = pd.DataFrame(job_queries, columns=["Job Name", "SQL Query"])

    df.to_excel(file_output, index=False)

    print(f"File Excel các câu truy vấn đã được lưu tại: {file_output}.\n")

# Xuất file Job dưới dạng thư mục chứa các file .sql
def job_to_txt(file_name):
    
    file_input = fr"Input/Job_DataStage/{file_name}.dsx"
    output = fr"Output/SQL_Job_DS/{file_name}" 

    try:
        with open(file_input, 'r', encoding='utf-8', errors='replace') as file:
            dsx_content = file.read()
    except FileNotFoundError as e:
        print(f"File {file_input} không tồn tại: {e}")

    extract_jobs_to_sql(dsx_content, output)

    print(f"Files các câu truy vấn đã được lưu tại thư mục: {output}.\n")

# Điền tên file cần xử lý 
# file_name = "BIDV_MIS_20240813_DMT_100_job"

#job_to_excel(file_name)

#job_to_txt(file_name)
