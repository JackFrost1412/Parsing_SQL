import sqlparse
from sqlparse.sql import Identifier, IdentifierList
from sqlparse.tokens import Keyword, DML

def extract_ctes_and_rest(sql):
    parsed = sqlparse.parse(sql)[0]
    cte_dict = {}
    main_sql_parts = []
    in_cte_block = False
    cte_block_processed = False

    for token in parsed.tokens:
        if token.ttype is Keyword.CTE and token.value.upper() == 'WITH':
            in_cte_block = True
            continue

        if in_cte_block and not cte_block_processed:
            # CTE block, look for CTE definitions and split at AS
            if isinstance(token, IdentifierList):
                # There could be multiple CTEs separated by commas
                for identifier in token.get_identifiers():
                    process_cte(identifier, cte_dict)
                cte_block_processed = True
            elif isinstance(token, Identifier):
                # Single CTE
                process_cte(token, cte_dict)
                cte_block_processed = True
            continue
        
        # After processing CTEs, switch to collecting the main SQL
        if cte_block_processed:
            main_sql_parts.append(str(token).strip())

    # Join the parts of the main SQL command
    main_sql = ' '.join(main_sql_parts).strip()
    return cte_dict, main_sql

def process_cte(token, cte_dict):
    """Helper function to process each CTE and extract its name and SQL."""
    cte_name = None
    cte_sql = None
    as_keyword_found = False
    cte_sql_tokens = []

    for sub_token in token.tokens:
        if sub_token.ttype is Keyword and sub_token.value.upper() == 'AS':
            as_keyword_found = True
        elif not as_keyword_found:
            # Before the 'AS', it's part of the CTE name
            if cte_name is None:
                cte_name = sub_token.value.strip().rstrip(')')
        else:
            # After the 'AS', it's part of the CTE SQL
            cte_sql_tokens.append(sub_token.value)

    if cte_name and cte_sql_tokens:
        cte_sql = ''.join(cte_sql_tokens).strip().lstrip('(').rstrip(')')
        cte_dict[cte_name] = cte_sql

sql_query = """
WITH union_datas AS (
   SELECT col1 FROM table1
), cte2 AS (
   SELECT col2 FROM table2
)
SELECT col1, col2 FROM union_datas JOIN cte2 ON union_datas.col1 = cte2.col2;
"""


sql_file_path = 'SourceCode\Parsing_SQL\Input_SQL_command\CTE_with.sql'
with open(sql_file_path, 'r') as file:
    sql_content = file.read()
    
# Call the function and print results
ctes, main_sql = extract_ctes_and_rest(sql_content)

print("CTEs:")
for cte_name, cte_sql in ctes.items():
    print(f"{cte_name}: \n {cte_sql}")

print("\nMain SQL:")
print(main_sql)