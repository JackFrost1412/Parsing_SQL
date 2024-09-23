import re
import os

# Hàm lọc bỏ các comment
def remove_comments(sql):
    sql = re.sub(r'--.*?\n', '', sql)
    sql = re.sub(r'/\*.*?\*/', '', sql, flags=re.DOTALL)
    return sql

# Hàm ghi các truy vấn ra thành từng file
def write_queries_to_file(job_name, queries, output_dir):
    sanitized_job_name = re.sub(r'[\\/*?:"<>|]', '_', job_name)
    file_path = os.path.join(output_dir, f"{sanitized_job_name}.sql")
    with open(file_path, 'w', encoding='utf-8') as file:
        for query in queries:
            file.write(query + "\n\n")

# Hàm truncate thư mục 
def clear_directory(directory):
    if os.path.exists(directory):
        for filename in os.listdir(directory):
            file_path = os.path.join(directory, filename)
            if os.path.isfile(file_path):
                os.remove(file_path)

# Hàm bóc tách các câu truy vấn từ các job
def extract_jobs_to_sql(dsx_content, output_dir):
    # Làm sạch thư mục lưu trữ
    clear_directory(output_dir)
    
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
        
    job_matches = re.finditer(r'BEGIN DSJOB.*?Identifier "(.*?)"', dsx_content, re.DOTALL)
    jobs = [(match.start(), match.group(1)) for match in job_matches]

    sql_matches = re.finditer(r'<!\[CDATA\[(.*?)\]\]>', dsx_content, re.DOTALL | re.IGNORECASE)
    sql_queries = [(match.start(), match.group(1).strip()) for match in sql_matches]

    job_queries_dict = {}
    total_jobs = 0
    
    # Danh sách các từ khóa bắt đầu lọc câu truy vấn
    sql_keywords = ['SELECT', 'UPDATE', 'INSERT INTO', 'DELETE FROM', 'WITH', 'TRUNCATE']

    # Process each query and assign it to the corresponding job
    for sql_pos, query in sql_queries:
        query = remove_comments(query)
        
        # Sử dụng re.sub để thay thế cả #pDate# và #pdate# bằng :pdate:
        query = re.sub(r'#pDate#|#pdate#', ':pdate:', query)

        # Tách các câu truy vấn theo dấu chấm phẩy
        queries = re.split(r';', query)
        queries = [q.strip() for q in queries if q.strip()]  # Lọc bỏ các câu rỗng và khoảng cách thừa

        for cleaned_query in queries:
            if any(cleaned_query.upper().startswith(keyword) for keyword in sql_keywords):
                if not cleaned_query.endswith(';'):
                    cleaned_query += ';'

                job_name = None
                # Tìm ra tên job tương ứng với từng truy vấn
                for i in range(len(jobs) - 1):
                    if jobs[i][0] <= sql_pos < jobs[i + 1][0]:
                        job_name = jobs[i][1]
                        break
                if job_name is None and jobs:
                    job_name = jobs[-1][1]

                # Thêm các truy vấn vào job tương ứng của chúng
                if job_name:
                    if job_name not in job_queries_dict:
                        job_queries_dict[job_name] = []
                    job_queries_dict[job_name].append(cleaned_query)
                    total_jobs += 1
                    print(f"Số câu truy vấn đọc được: {total_jobs}", end='\r')
    print()
    print(f"Số job đọc được: {len(job_queries_dict)}\n")
    
    # Ghi từng job ra 1 file riêng biệt
    for job_name, queries in job_queries_dict.items():
        write_queries_to_file(job_name, queries, output_dir)

    return job_queries_dict
