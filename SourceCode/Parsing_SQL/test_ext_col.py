import re

def clean_sql_query(sql):
    """Cleans SQL query by removing unwanted characters."""
    return re.sub(r'\\(9)+', ' ', sql).strip()

def extract_columns_without_alias(sql):
    # First clean the query from \(9) placeholders
    cleaned_query = clean_sql_query(sql)
    
    # Patterns for extracting parts of the SQL query
    select_pattern = r'\bSELECT\s+(.*?)\s+FROM'
    where_pattern = r'\bWHERE\s+(.*?)(?:\bGROUP BY|\bORDER BY|\b$)'
    group_by_pattern = r'\bGROUP BY\s+(.*?)(?:\bORDER BY|\b$)'
    order_by_pattern = r'\bORDER BY\s+(.*?)(?:\b$)'
    join_pattern = r'\bJOIN\s+(.*?)\bON\b(.*?)(?:\bWHERE|\bGROUP BY|\bORDER BY|\b$)'

    # Extract columns from SELECT part (between SELECT and FROM)
    select_part = re.search(select_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    columns = []
    
    if select_part:
        select_part = select_part.group(1)
        # Find columns that are not prefixed with a table alias in SELECT
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', select_part)
    
    # Extract columns from WHERE part
    where_part = re.search(where_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    if where_part:
        where_part = where_part.group(1)
        # Find columns in WHERE clause without table aliases
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', where_part)
    
    # Extract columns from GROUP BY part
    group_by_part = re.search(group_by_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    if group_by_part:
        group_by_part = group_by_part.group(1)
        # Find columns in GROUP BY clause without table aliases
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', group_by_part)
    
    # Extract columns from ORDER BY part
    order_by_part = re.search(order_by_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    if order_by_part:
        order_by_part = order_by_part.group(1)
        # Find columns in ORDER BY clause without table aliases
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', order_by_part)
    
    # Extract columns from JOIN conditions (the ON clause)
    join_part = re.findall(join_pattern, cleaned_query, re.IGNORECASE | re.DOTALL)
    for _, on_clause in join_part:
        # Find columns in JOIN clause without table aliases
        columns += re.findall(r'\b(?<!\.)\b\w+\b(?!\s*\.)', on_clause)
    
    # Return unique columns without table alias
    return list(set(columns))

# Example usage
sql_query = """
select
	chg.ac_ar_id,
	axr.EFF_RATE_PCT	INT_RATE
from TWT_FNC_SVC_AR_ANL_FCT_FA_CHG chg
left join ar_x_rate_tp_rltnp AXR on AXR.ar_x_rate_tp_rltnp_tp_id ='B1D1E14709EF08BBB38D361A980E4DE1'
    AND AXR.RATE_TP_ID = '2EC90B394FDFF95D4EC063F17BE70B47' 
    AND AXR.RATE_CMPT = 'INTEREST_RATE'
	and AXR.ar_id = chg.AC_AR_ID AND AXR.EFF_DT <= LAST_EFF_DT AND AXR.END_DT > LAST_EFF_DT
"""
columns = extract_columns_without_alias(sql_query)
print(columns)
