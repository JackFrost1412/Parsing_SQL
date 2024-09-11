import sqlparse
from sqlparse.sql import IdentifierList, Identifier, Comparison, Parenthesis, Function, Where
from sqlparse.tokens import Keyword, DML
import Extract_Nested_SQL
import pandas as pd

# Your flatten_tokens function
def flatten_tokens(tokens):
    """Flatten nested tokens like IdentifierList, Parenthesis, Function, and Where."""
    for token in tokens:
        if isinstance(token, (IdentifierList, Parenthesis, Function, Where)):
            for sub_token in flatten_tokens(token.tokens):
                yield sub_token
        elif token.ttype is not None or token.value.strip():  # Non-whitespace tokens
            yield token

# Helper function to check if a column is unqualified (without prefix like table/alias)
# def is_unqualified_column(identifier):
#     """Check if the identifier is a column without table/alias prefix."""
#     return '.' not in str(identifier)

# Function to extract unqualified column names from tokens
def extract_unqualified_columns(tokens):
    """Extract unqualified column names from the flattened tokens."""
    columns = []
    capturing_columns = False  # Track if we are in SELECT, WHERE, etc.

    for token in flatten_tokens(tokens):
        # Enable capturing after SELECT or in WHERE/ON/ORDER BY/GROUP BY clauses
        if token.ttype is DML and token.value.upper() == 'SELECT':
            capturing_columns = True
        elif token.ttype is Keyword and token.value.upper() in ('ON', 'WHERE', 'GROUP BY', 'ORDER BY', 'SET'):
            capturing_columns = True
        elif token.ttype is Keyword and token.value.upper() in ('FROM', 'JOIN'):
            capturing_columns = False  # Disable capturing in FROM and JOIN clauses

        # If capturing columns, look for unqualified columns (ignore table names and keywords)
        if capturing_columns:
            if isinstance(token, Identifier):
                columns.append(token.get_real_name())
            elif isinstance(token, Comparison):
                columns.append(token.left.get_real_name())

    return columns

# Main function to parse SQL and extract unqualified columns
def extract_unqualified_columns_from_query(sql_query):
    parsed = sqlparse.parse(sql_query)[0]
    
    # Pass the entire set of tokens through the flatten_tokens generator
    columns = extract_unqualified_columns(parsed.tokens)
    
    return columns

def process_simple_query(sql_commands):
    sql_commands = sqlparse.split(sql_commands)
    # Initialize an empty list to collect rows for the DataFrame
    data = []
    
    # Loop through each SQL command
    for sql_command in sql_commands:
        # Extract unqualified column names
        unqualified_columns = extract_unqualified_columns_from_query(sql_command)
        # Extract table names and aliases
        table_names = Extract_Nested_SQL.extract_table_names_with_aliases(sql_command)
        
        # Extract the table name from list_1 (first element of table_names tuple)
        for table_name in table_names:
            for column in unqualified_columns:
                data.append({"Source": None,"Table Name": table_name[0],"Table Alias" : None , "Column Name": column})
    
    # Convert the list of dictionaries to a pandas DataFrame
    df = pd.DataFrame(data)
    
    # Return the DataFrame
    return df