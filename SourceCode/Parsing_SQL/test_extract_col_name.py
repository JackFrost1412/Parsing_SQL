import sqlparse
from sqlparse.sql import IdentifierList, Identifier, Function, Parenthesis
from sqlparse.tokens import Keyword, DML

def extract_columns_from_function(func_token):
    """Extract column names inside aggregate functions."""
    columns = []
    for token in func_token.tokens:
        if isinstance(token, Identifier):
            columns.append(token.get_real_name())
        elif token.is_group:
            columns.extend(extract_columns_from_function(token))
    return columns

def extract_column_names(sql):
    parsed = sqlparse.parse(sql)[0]
    columns = []
    capture_columns = False
    table_alias = {}

    def extract_identifiers(token):
        """Extract column names from Identifier, IdentifierList, and Function tokens."""
        if isinstance(token, IdentifierList):
            for identifier in token.get_identifiers():
                if isinstance(identifier, Function):
                    columns.extend(extract_columns_from_function(identifier))
                else:
                    col = identifier.get_real_name()
                    if identifier.get_parent_name():
                        col = f"{identifier.get_parent_name()}.{col}"
                    columns.append(col)
        elif isinstance(token, Identifier):
            col = token.get_real_name()
            if token.get_parent_name():
                col = f"{token.get_parent_name()}.{col}"
            columns.append(col)
        elif isinstance(token, Function):
            columns.extend(extract_columns_from_function(token))
        elif token.is_group:  # Handle nested queries or expressions
            for subtoken in token.tokens:
                extract_identifiers(subtoken)

    def parse_table_aliases(token):
        """Extract table aliases from JOIN clauses."""
        if token.ttype is Keyword and token.value.upper() in ('JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'INNER JOIN', 'OUTER JOIN'):
            parts = token.tokens
            for i, part in enumerate(parts):
                if isinstance(part, Identifier):
                    if i + 1 < len(parts) and parts[i + 1].ttype is Keyword:
                        # Next token should be the alias
                        alias_token = parts[i + 1]
                        if alias_token.ttype is Name:
                            table_alias[alias_token.get_real_name()] = part.get_real_name()

    for token in parsed.tokens:
        if token.ttype is DML and token.value.upper() == 'SELECT':
            capture_columns = True
        elif token.ttype is Keyword and token.value.upper() in ('WHERE', 'ON', 'GROUP BY', 'ORDER BY'):
            capture_columns = True
        elif token.ttype is Keyword and token.value.upper() == 'FROM':
            capture_columns = False
        elif token.ttype is Keyword and token.value.upper() in ('JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'INNER JOIN', 'OUTER JOIN'):
            parse_table_aliases(token)
        if capture_columns:
            extract_identifiers(token)

    return columns

# Example SQL Query with table aliases
sql = """
SELECT t1.column1, SUM(t2.column2), COUNT(t3.column3)
FROM table1 t1
JOIN table2 t2 ON t1.id = t2.id
LEFT JOIN table3 t3 ON t1.id = t3.id
WHERE t1.column1 = 'value' AND t2.column2 > 100
GROUP BY t1.column1, t2.column2
ORDER BY COUNT(t3.column3);
"""

columns = extract_column_names(sql)
print("Extracted Columns:", columns)
