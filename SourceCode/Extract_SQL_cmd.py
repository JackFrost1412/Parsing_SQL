import re
import sqlparse
import pandas as pd

def extract_SQL(content):
    # Define the regular expression to extract the job name and SQL commands
    job_pattern = re.compile(r'BEGIN DSJOB.*?Name "(.*?)".*?(?=BEGIN DSJOB|END DSJOB|$)', re.DOTALL) # get Job name
    sql_pattern = re.compile(r'<SelectStatement[^>]*?>(.*?)</SelectStatement>', re.DOTALL) 
    cdata_pattern = re.compile(r'<!\[CDATA\[(.*?)\]\]>', re.DOTALL)
    table_pattern = re.compile(r'\b(?:FROM|JOIN|INTO|WITH)\s+([^\s,()]+)', re.IGNORECASE)
    
    # Find all job sections
    jobs = job_pattern.findall(content)

    jobs_dict = {}
    for job_name in jobs:
        # Extract the SQL commands within each job
        job_section = content.split(f'Name "{job_name}"')[1].split('BEGIN DSJOB')[0]  # Extract section of the job
        sql_statements = sql_pattern.findall(job_section)
        
        sql_commands = []
        for sql_statement in sql_statements:
            cdata_match = cdata_pattern.search(sql_statement)
            if cdata_match:
                sql_command = cdata_match.group(1)
                sql_commands.append(sql_command)
        
        jobs_dict[job_name] = sql_commands
        
    return jobs_dict  

