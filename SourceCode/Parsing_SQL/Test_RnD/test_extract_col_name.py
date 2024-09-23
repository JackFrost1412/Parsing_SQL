from collections import deque
import sqlparse
from sqlparse.sql import Parenthesis, Identifier, IdentifierList
from sqlparse.tokens import DML
import time 

from collections import deque
import sqlparse
from sqlparse.sql import Parenthesis, Identifier, IdentifierList
from sqlparse.tokens import DML

def extract_nested_subselects_and_rest(sql):
    parsed = sqlparse.parse(sql)
    subselects_with_names = []
    # rest_of_sql = deque()
    
    # Helper function to recursively find sub-selects
    def find_subselects_and_rest(token, alias=None, level=0):
        if isinstance(token, Parenthesis):
            # Check for a sub-select inside parentheses
            if any(t.ttype is DML and t.value.upper() == 'SELECT' for t in token.flatten()):
                stripped_subselect = str(token).strip('()')
                subselects_with_names.append((alias, stripped_subselect, level))  # Add the level of nesting
                # Recursively look inside the sub-select to find deeper sub-selects
                for subtoken in token.tokens:
                    find_subselects_and_rest(subtoken, alias, level + 1)
                return  # Skip adding this sub-select to the rest of SQL

            # Continue processing the parenthesis tokens
            for subtoken in token.tokens:
                find_subselects_and_rest(subtoken, alias, level)

        elif isinstance(token, Identifier) or isinstance(token, IdentifierList):
            # Process identifiers or identifier lists
            for subtoken in token.tokens:
                if isinstance(subtoken, Parenthesis):
                    find_subselects_and_rest(subtoken, token.get_real_name(), level)
                # else:
                #     rest_of_sql.append(str(subtoken))
                    
        elif token.is_group:
            # Process other grouped tokens
            for subtoken in token.tokens:
                find_subselects_and_rest(subtoken, alias, level)
                
        # else:
        #     # Add other tokens to the rest of SQL
        #     rest_of_sql.append(str(token))

    # Process each statement in the parsed SQL
    for statement in parsed:
        find_subselects_and_rest(statement)

    # Combine rest of SQL into a string
    # rest_of_sql_combined = ''.join(rest_of_sql).strip()

    return subselects_with_names

# Function to remove level 1 sub-selects from the original SQL
def remove_level_1_subselects(sql, subselects_with_names):
    # Work with the original SQL string and replace level 1 sub-selects
    modified_sql = sql
    for alias, subselect, level in subselects_with_names:
        if level == 0:
            # Replace sub-select at level 1 with a placeholder "()"
            modified_sql = modified_sql.replace(subselect, "")
    return modified_sql

start = time.time()
# Test the performance of this code with a large SQL query:
sql_file_path = r'Output\SQL_Job_DS\BIDV_MIS_20240813_DMT_100_job\PAR_NZ_DMMIS_ADMIN_CST_PD_ANL_FCT_DAILY_CADENCIE_EXTRA_Dels.sql'
sql_ex_sub = r'SourceCode\Parsing_SQL\Input_SQL_command\sql(9).sql'

with open(sql_file_path, 'r') as file:
    sql_content = file.read()

cleaned_query = sqlparse.format(sql_content).upper()
print(cleaned_query)
# # Step 1: Extract sub-selects and get the rest of the SQL
# subselects = extract_nested_subselects_and_rest(sql_content)

# # Step 2: Remove level 1 sub-selects from the original SQL
# remaining_sql = remove_level_1_subselects(sql_content, subselects)

# # Output the results
# print("Sub-selects with Nesting Levels:")
# for subselect in subselects:
#     print(f"Alias: {subselect[0]}, Level: {subselect[2]}, Subselect: {subselect[1]}")

# print("\nRemaining SQL without Level 1 Sub-selects: \n", remaining_sql)

# end = time.time()
# print(f"Time taken: {end - start} seconds")