import pandas as pd
from Job_DS_to_Excel import extract_jobs_to_excel
from Job_DS_to_sql import extract_jobs_to_sql

# Xuất file Job dưới dạng Excel
"""
# Điền tên file cần xử lý vào đây
file_name = "FNC_SVC_AR_FCT_FA"

file_input = fr"Input\Job_DataStage\{file_name}.dsx"
file_output = fr"Output\SQL_Job_DS\{file_name}_SQLs.xlsx"

# Đọc nội dung của file .dsx
with open(file_input, 'r', encoding='utf-8', errors='replace') as file:
    dsx_content = file.read()

# Gọi hàm để trích xuất tên job và các truy vấn SQL
job_queries = extract_jobs_to_excel(dsx_content)

# Chuyển đổi job_queries thành DataFrame
df = pd.DataFrame(job_queries, columns=["Job Name", "SQL Query"])

# Xuất DataFrame ra file Excel
df.to_excel(file_output, index=False)

print(f"Xử lý file {file_name}.dsx thành công.")
"""

# Xuất file Job dưới dạng thư mục chứa các file .sql
file_name = "BIDV_MIS_20240813_DMT_100_job"
output_directory = fr"Output\SQL_Job_DS\{file_name}" 

with open(fr"Input\Job_DataStage\{file_name}.dsx", 'r', encoding='utf-8', errors='replace') as file:
    dsx_content = file.read()

extract_jobs_to_sql(dsx_content, output_directory)

print(f"Xử lý file {file_name}.dsx thành công.")