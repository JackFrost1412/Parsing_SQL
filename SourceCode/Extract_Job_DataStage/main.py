import pandas as pd
from Job_DS import extract_jobs_and_sql

# Đọc nội dung của file .dsx
with open('Input\\Job_DataStage\\FNC_SVC_AR_FCT_FA.dsx', 'r', encoding='utf-8') as file:
    dsx_content = file.read()

# Gọi hàm để trích xuất tên job và các truy vấn SQL
job_queries = extract_jobs_and_sql(dsx_content)

# Chuyển đổi job_queries thành DataFrame
df = pd.DataFrame(job_queries, columns=["Job Name", "SQL Query"])

# Xuất DataFrame ra file Excel
df.to_excel("Output\\SQL_Job_DS\\job_ds_queries.xlsx", index=False)

print("Data has been exported to job_queries.xlsx")