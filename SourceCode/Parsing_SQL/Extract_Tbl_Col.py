import sqlparse
import pandas as pd
from sqlparse.sql import IdentifierList, Identifier, Function, Where, Comparison, Parenthesis
from sqlparse.tokens import Keyword, DML, Name
import re

def extract_table_names_with_aliases(sql):
    try:
        # Parse the SQL statement
        parsed = sqlparse.parse(sql)
        
        # List to hold table names and their aliases
        tables_with_aliases = []
        
        for stmt in parsed:
            context = None
            
            for token in stmt.tokens:
                if token.ttype is Keyword or token.ttype is DML:
                    value = token.value
                    if value in ['FROM', 'INTO', 'UPDATE']:
                        context = value
                    elif value in ['LEFT JOIN', 'RIGHT JOIN', 'INNER JOIN', 'OUTER JOIN', 'JOIN']:
                        context = 'JOIN'
                    else:
                        context = None
                
                if context and isinstance(token, (Identifier, IdentifierList)):
                    identifiers = token.get_identifiers() if isinstance(token, IdentifierList) else [token]
                    
                    for identifier in identifiers:
                        tables_with_aliases.append((identifier.get_real_name(), identifier.get_alias() or identifier.get_real_name()))
        
        return tables_with_aliases
    except Exception as e:
        print(f"Error in extract_table_names_with_aliases: {e}")
        return []

def extract_alias_column_pairs(sql):
    try:
        pattern = re.compile(r'(\b\w+\b)\.(\b\w+\b)', re.IGNORECASE)
        columns = []
        tuples = []
        matches = pattern.findall(sql)
        
        if matches:
            for alias, column in matches:
                columns.append(alias + "." + column)
                tuples = [tuple(col.split('.', 1)) for col in columns]
        return tuples
    except Exception as e:
        print(f"Error in extract_alias_column_pairs: {e}")
        return []

def extract_columns_without_dot(sql):
    if not sql or not sql.strip():
        return set()

    try:
        parsed = sqlparse.parse(sql)
        parsed_statement = parsed[0]
        columns = set()

        def process_token(token):
            if isinstance(token, Identifier):
                if isinstance(token.tokens[0], Function):
                    process_function(token)
                elif '.' not in token.value:
                    columns.add(token.get_real_name())
            elif isinstance(token, Function):
                process_function(token)
            elif isinstance(token, IdentifierList):
                for identifier in token.get_identifiers():
                    process_token(identifier)
            elif isinstance(token, Comparison):
                for t in token.tokens:
                    if t.ttype is Name or isinstance(t, Identifier):
                        if '.' not in t.value and not t.is_keyword and t.ttype not in sqlparse.tokens.Operator:
                            columns.add(t.get_real_name() if isinstance(t, Identifier) else t.value)
                    else:
                        process_token(t)
            elif isinstance(token, Parenthesis):
                process_parenthesis(token)

        def process_function(func_token):
            if func_token.get_name() == 'CAST':
                for token in func_token.tokens:
                    if isinstance(token, Parenthesis):
                        process_parenthesis(token)
            else:
                columns.add(func_token.value)

        def process_parenthesis(paren_token):
            for token in paren_token.tokens:
                if isinstance(token, Comparison):
                    for t in token.tokens:
                        if t.ttype is Name or isinstance(t, Identifier):
                            if '.' not in t.value:
                                columns.add(t.get_real_name() if isinstance(t, Identifier) else t.value)
                elif isinstance(token, Identifier):
                    if '.' not in token.value:
                        columns.add(token.get_real_name())
                elif isinstance(token, Function):
                    process_function(token)
                elif isinstance(token, Parenthesis):
                    process_parenthesis(token)

        def process_where_clause(where_token):
            for token in where_token.tokens:
                if isinstance(token, Comparison):
                    for sub_token in token.tokens:
                        if isinstance(sub_token, Identifier):
                            if '.' not in sub_token.value:
                                columns.add(sub_token.get_real_name())
                        elif isinstance(sub_token, Function):
                            process_function(sub_token)
                        elif isinstance(sub_token, Parenthesis):
                            process_parenthesis(sub_token)
                        elif sub_token.ttype in sqlparse.tokens.Operator:
                            continue
                        else:
                            process_token(sub_token)
                elif token.ttype is Keyword and token.value == 'AND':
                    continue
                elif isinstance(token, Parenthesis):
                    process_parenthesis(token)
                else:
                    process_token(token)

        select_seen = False
        for token in parsed_statement.tokens:
            if token.ttype is DML and token.value == 'SELECT':
                select_seen = True
                continue
            if select_seen:
                if token.ttype is Keyword and token.value == 'FROM':
                    select_seen = False
                    continue
                process_token(token)
            elif token.ttype is Keyword and token.value in ('GROUP BY', 'ORDER BY'):
                next_token = parsed_statement.token_next(parsed_statement.token_index(token))[1]
                if next_token:
                    process_token(next_token)
            elif isinstance(token, Where):
                process_where_clause(token)
            elif token.ttype is Keyword and token.value in ('ON', 'AND'):
                next_token = parsed_statement.token_next(parsed_statement.token_index(token))[1]
                process_token(next_token)

        return columns
    except Exception as e:
        print(f"Error in extract_columns_without_dot: {e}")
        return set()
