import sqlparse
from sqlparse.sql import Identifier, IdentifierList, Function, Comparison, Parenthesis, Where
from sqlparse.tokens import Keyword, DML, Name

import sqlparse
from sqlparse.sql import Identifier, IdentifierList, Function, Comparison, Parenthesis, Where
from sqlparse.tokens import Keyword, DML, Name

def extract_columns_without_dot(sql):
    if not sql or not sql.strip():
        return set()  # Return an empty set for empty or None SQL input

    # Parse the SQL statement
    parsed = sqlparse.parse(sql)
    if not parsed or len(parsed) != 1:
        return set()  # Return an empty set if no valid statement is found

    parsed_statement = parsed[0]
    columns = set()  # Use a set to store unique column names

    def process_token(token):
        if isinstance(token, Identifier):
            if isinstance(token.tokens[0], Function):
                process_function(token.tokens[0])
            elif '.' not in token.value:
                columns.add(token.get_real_name())
        elif isinstance(token, Function):
            process_function(token)
        elif isinstance(token, IdentifierList):
            for identifier in token.get_identifiers():
                process_token(identifier)
        elif isinstance(token, Comparison):
            for t in token.tokens:
                if isinstance(t, Identifier) and '.' not in t.get_real_name():
                    columns.add(t.get_real_name())
                elif isinstance(t, Function):
                    process_function(t)
                elif isinstance(t, Parenthesis):
                    process_parenthesis(t)
        elif isinstance(token, Parenthesis):
            process_parenthesis(token)

    def process_function(func_token):
        # Process specific functions like CAST or others
        if func_token.get_name().upper() == 'CAST':
            # Process the content inside the parentheses
            for token in func_token.tokens:
                if isinstance(token, Parenthesis):
                    process_parenthesis(token)
        else:
            # If it's a function, process tokens inside if it's a valid column or identifier
            for token in func_token.tokens:
                if isinstance(token, Parenthesis):
                    process_parenthesis(token)
                elif isinstance(token, Identifier) and '.' not in token.get_real_name():
                    columns.add(token.get_real_name())

    def process_parenthesis(paren_token):
        for token in paren_token.tokens:
            if isinstance(token, Comparison):
                for t in token.tokens:
                    if isinstance(t, Identifier) and '.' not in t.get_real_name():
                        columns.add(t.get_real_name())
            elif isinstance(token, Identifier) and '.' not in token.get_real_name():
                columns.add(token.get_real_name())
            elif isinstance(token, Function):
                process_function(token)
            elif isinstance(token, Parenthesis):
                process_parenthesis(token)

    def process_where_clause(where_token):
        for token in where_token.tokens:
            if isinstance(token, Comparison):
                for sub_token in token.tokens:
                    if isinstance(sub_token, Identifier) and '.' not in sub_token.get_real_name():
                        columns.add(sub_token.get_real_name())
                    elif isinstance(sub_token, Function):
                        process_function(sub_token)
                    elif isinstance(sub_token, Parenthesis):
                        process_parenthesis(sub_token)
            elif isinstance(token, Parenthesis):
                process_parenthesis(token)
            else:
                process_token(token)

    select_seen = False
    for token in parsed_statement.tokens:
        if token.ttype is DML and token.value.upper() == 'SELECT':
            select_seen = True
            continue
        if select_seen:
            if token.ttype is Keyword and token.value.upper() == 'FROM':
                select_seen = False
                continue
            process_token(token)
        elif isinstance(token, Where):
            process_where_clause(token)
        elif token.ttype is Keyword and token.value.upper() in ('GROUP BY', 'ORDER BY'):
            next_token = parsed_statement.token_next(parsed_statement.token_index(token))[1]
            if next_token:
                process_token(next_token)

    return columns

# Test cases
def run_tests():
    test_cases = [
        ("""
        SELECT
            *
        FROM
            TBL_PERIOD_EVALUATION
        WHERE
            PERIOD <> 0
            AND GROUP_CONTRACT_CONDITION NOT IN ( 'REVALUE_COLLATERAL', 'SECUR_PROP_INSURANCE' )
            AND ( CONTRACT_STATUS IS NULL OR CONTRACT_STATUS NOT IN ( 'OVERDUE_1', 'OVERDUE_2' ) )
            AND ( CONTRACT_CONDITION_STATUS IS NULL OR CONTRACT_CONDITION_STATUS <> 'STOP_FOLLOW' )
            AND LOCKED_KEY IS NULL
            AND CREATE_NEXT_PERIOD_STATUS IN ( 'NEW', 'RENEW' )
            AND ( FORCE_CREATE_NEXT = 1 OR CAST( EVALUATION_DATE AS DATE ) < CAST( SYSDATE ) );
        """, "Complex SQL with multiple conditions"),
        
        ("""
        SELECT
            employee_id,
            first_name,
            last_name,
            SUM(salary) total_salary,
            AVG(performance_score) as avg_performance
        FROM
            employees
        GROUP BY
            employee_id, first_name, last_name
        HAVING
            SUM(salary) > 50000;
        """, "SQL with aggregate functions"),
        
        ("""
        SELECT DISTINCT
            e.employee_id,
            e.first_name,
            e.last_name,
            d.department_name,
            COALESCE(p.project_name, 'No Project') as project_name
        FROM
            employees e
        JOIN
            departments d ON e.department_id = d.department_id
        LEFT JOIN
            projects p ON e.project_id = p.project_id
        WHERE
            e.hire_date > '2020-01-01'
            AND (e.salary > 50000 OR e.performance_score > 8)
        ORDER BY
            e.last_name, e.first_name;
        """, "SQL with joins and multiple conditions")
    ]

    for i, (sql, description) in enumerate(test_cases, 1):
        print(f"\nTest Case {i}: {description}")
        print("SQL Query:")
        print(sql)
        columns = extract_columns_without_dot(sql)
        print("Extracted Columns:")
        print(columns)
        print("-" * 50)

if __name__ == "__main__":
    run_tests()