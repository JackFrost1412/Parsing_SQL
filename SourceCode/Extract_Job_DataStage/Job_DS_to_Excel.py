import re

def remove_comments(sql):
    # Loại bỏ các comment kiểu -- từ dấu -- cho đến khi gặp dấu xuống dòng \n
    sql = re.sub(r'--.*?\n', '', sql)
    # Loại bỏ các comment kiểu /* ... */
    sql = re.sub(r'/\*.*?\*/', '', sql, flags=re.DOTALL)
    return sql

def extract_jobs_to_excel(dsx_content):
    # Tìm tất cả các job với tên và vị trí bắt đầu
    job_matches = re.finditer(r'BEGIN DSJOB.*?Identifier "(.*?)"', dsx_content, re.DOTALL)
    jobs = [(match.start(), match.group(1)) for match in job_matches]

    # Tìm tất cả các đoạn CDATA chứa câu truy vấn SQL với vị trí của chúng
    sql_matches = re.finditer(r'<!\[CDATA\[(.*?)\]\]>', dsx_content, re.DOTALL | re.IGNORECASE)
    sql_queries = [(match.start(), match.group(1).strip()) for match in sql_matches]

    job_queries = []
    
    # Duyệt qua từng câu truy vấn và gán nó vào job tương ứng
    for sql_pos, query in sql_queries:
        # Loại bỏ comment trong câu truy vấn
        query = remove_comments(query)
        
        # Thay thế #pDate# thành :pDate:
        query = query.replace("#pDate#", ":pDate:")
        
        # Chỉ lấy những câu truy vấn bắt đầu bằng từ khóa SQL chính xác
        sql_keywords = ['SELECT', 'UPDATE', 'INSERT INTO', 'DELETE FROM', 'WITH', 'TRUNCATE']
        
        # Tách tất cả câu truy vấn ngăn cách bởi dấu chấm phẩy
        queries = re.split(r';', query)
        
        for single_query in queries:
            single_query = single_query.strip()
            if not single_query:
                continue  # Bỏ qua các phần tử rỗng do dấu ;
            
            for keyword in sql_keywords:
                if single_query.upper().startswith(keyword):
                    # Loại bỏ phần trước từ khóa và chỉ giữ lại câu truy vấn
                    cleaned_query = re.sub(rf'^.*?\b{keyword}\b', keyword, single_query, flags=re.DOTALL | re.IGNORECASE)
                    
                    # Thêm dấu chấm phẩy vào cuối câu nếu chưa có
                    if not cleaned_query.endswith(';'):
                        cleaned_query += ';'

                    # Xác định job chứa câu truy vấn này
                    job_name = None
                    for i in range(len(jobs) - 1):
                        if jobs[i][0] <= sql_pos < jobs[i + 1][0]:
                            job_name = jobs[i][1]
                            break
                    if job_name is None and jobs:
                        job_name = jobs[-1][1]

                    job_queries.append((job_name, cleaned_query))
                    break
    
    return job_queries
