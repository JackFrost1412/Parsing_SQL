import re

def is_subselect(sql_query):
    """
    Check if a portion of SQL query is a sub-select by detecting 
    the presence of a 'SELECT' statement inside parentheses.
    """
    # Remove common SQL functions like SUM(), NVL(), etc.
    function_pattern = r'\b(SUM|COUNT|NVL|AVG|MIN|MAX|COALESCE|ROUND)\s*\(.*?\)'
    cleaned_query = re.sub(function_pattern, '', sql_query, flags=re.IGNORECASE)

    # Look for SELECT within parentheses indicating a sub-select
    subselect_pattern = r'\(\s*SELECT\s+.*?\s+FROM\s+.*?\)'
    
    return bool(re.search(subselect_pattern, cleaned_query, re.IGNORECASE))


def extract_from_sql(sql_query):
    """
    Main function to extract table and column names from a SQL query by
    delegating to specific extractor functions based on the query type.
    """
    # Clean and prepare SQL query
    sql_query = clean_sql_query(sql_query)  # Clean SQL comments, whitespaces, etc.
    
    # Initialize result containers
    table_names = []
    column_names = []

    # 1. Check if the query contains a CTE (WITH clause)
    if "WITH" in sql_query.upper():
        cte_tables, cte_columns = extract_from_ctes(sql_query)
        table_names.extend(cte_tables)
        column_names.extend(cte_columns)

    # 2. Improved check for sub-selects
    if is_subselect(sql_query):  # Use refined check for sub-select
        subselect_tables, subselect_columns = extract_from_subselects(sql_query)
        table_names.extend(subselect_tables)
        column_names.extend(subselect_columns)
    
    # 3. Check if the query contains a JOIN clause
    if "JOIN" not in sql_query.upper():
        # Simple SQL query (without JOINs)
        simple_tables, simple_columns = extract_from_simple_sql(sql_query)
        table_names.extend(simple_tables)
        column_names.extend(simple_columns)
    else:
        # 4. General SQL query
        general_tables, general_columns = extract_from_general_sql(sql_query)
        table_names.extend(general_tables)
        column_names.extend(general_columns)

    # Return the extracted table names and column names
    return table_names, column_names
