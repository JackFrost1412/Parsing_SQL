import pandas as pd
from Job_DS import extract_jobs_and_sql

# Điền tên file cần xử lý vào đây
file_name = "BIDV_MIS_20240813_DMT_100_job"

file_input = f"Input\\Job_DataStage\\{file_name}.dsx"
file_output = f"Output\\SQL_Job_DS\\{file_name}_SQLs.xlsx"

# Đọc nội dung của file .dsx
with open(file_input, 'r', encoding='utf-8', errors='replace') as file:
    dsx_content = file.read()

# Gọi hàm để trích xuất tên job và các truy vấn SQL
job_queries = extract_jobs_and_sql(dsx_content)

# Chuyển đổi job_queries thành DataFrame
df = pd.DataFrame(job_queries, columns=["Job Name", "SQL Query"])

# Xuất DataFrame ra file Excel
df.to_excel(file_output, index=False)