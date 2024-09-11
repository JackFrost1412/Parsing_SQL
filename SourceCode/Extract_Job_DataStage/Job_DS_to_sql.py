import re
import pandas as pd
import os

def remove_comments(sql):
    sql = re.sub(r'--.*?\n', '', sql)  # Remove single-line comments
    sql = re.sub(r'/\*.*?\*/', '', sql, flags=re.DOTALL)  # Remove multi-line comments
    return sql

def write_queries_to_file(job_name, queries, output_dir):
    # Sanitize job_name to ensure it's a valid filename
    sanitized_job_name = re.sub(r'[\\/*?:"<>|]', '_', job_name)
    file_path = os.path.join(output_dir, f"{sanitized_job_name}.sql")
    with open(file_path, 'w', encoding='utf-8') as file:
        for query in queries:
            file.write(query + "\n\n")  # Write each query followed by a newline

def extract_jobs_to_sql(dsx_content, output_dir):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
        
    job_matches = re.finditer(r'BEGIN DSJOB.*?Identifier "(.*?)"', dsx_content, re.DOTALL)
    jobs = [(match.start(), match.group(1)) for match in job_matches]

    sql_matches = re.finditer(r'<!\[CDATA\[(.*?)\]\]>', dsx_content, re.DOTALL | re.IGNORECASE)
    sql_queries = [(match.start(), match.group(1).strip()) for match in sql_matches]
    
    job_queries_dict = {}

    # Process each query and assign it to the corresponding job
    for sql_pos, query in sql_queries:
        query = remove_comments(query)
        query = query.replace("#pDate#", ":pDate:")

        sql_keywords = ['SELECT', 'UPDATE', 'INSERT INTO', 'DELETE FROM', 'WITH']
        for keyword in sql_keywords:
            if query.upper().startswith(keyword):
                cleaned_query = re.sub(rf'^.*?\b{keyword}\b', keyword, query, flags=re.DOTALL | re.IGNORECASE)
                cleaned_query = re.split(r';', cleaned_query)[0]  # Only keep part before first semicolon

                if not cleaned_query.endswith(';'):
                    cleaned_query += ';'

                job_name = None
                for i in range(len(jobs) - 1):
                    if jobs[i][0] <= sql_pos < jobs[i + 1][0]:
                        job_name = jobs[i][1]
                        break
                if job_name is None and jobs:
                    job_name = jobs[-1][1]

                # Add query to the job's list in the dictionary
                if job_name:
                    if job_name not in job_queries_dict:
                        job_queries_dict[job_name] = []
                    job_queries_dict[job_name].append(cleaned_query)
                break

    # Write each job's queries to a separate file
    for job_name, queries in job_queries_dict.items():
        write_queries_to_file(job_name, queries, output_dir)

    return job_queries_dict
