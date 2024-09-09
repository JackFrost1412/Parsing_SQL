from docx import Document
import re
import pandas as pd

def contains_exact_keyword(text, keyword):
    pattern = r'\b' + re.escape(keyword) + r'\b'
    return bool(re.search(pattern, text))

def clean_text(text):
    text = re.split(r'--|//', text)[0].strip()
    parts = re.split(r';', text, 1)
    if len(parts) > 1:
        return parts[0] + ';'
    return text
    
def remove_text_before_keyword(text, keyword):
    parts = re.split(r'(?i)\b' + re.escape(keyword) + r'\b', text)
    if len(parts) > 1:
        return keyword + parts[-1].strip()
    return text

def format_sql(text):
    keywords_with_space = ['WITH', 'SELECT', 'UPDATE', 'CASE WHEN', 'CASE', 'WHERE', 'UNION ALL', 'JOIN', 'INSERT INTO', 'DELETE FROM']
    for keyword in keywords_with_space:
        text = re.sub(rf'\b{keyword}\s*', f'{keyword} ', text, flags=re.IGNORECASE)
    return text

def contains_vietnamese(text):
    vietnamese_pattern = re.compile(r'[àáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÙÚỤỦŨƯỪỨỰỬỮỲÝỴỶỸĐ]')
    return bool(vietnamese_pattern.search(text))

def extract_sql_code(docx_file):
    doc = Document(docx_file)
    sql_data = []
    current_block = []
    current_heading = None
    
    sql_dml_keywords = ('WITH', 'SELECT', 'UPDATE', 'INSERT INTO', 'DELETE FROM')
    sql_keywords = ('WITH', 'SELECT', 'UPDATE', 'CASE WHEN', 'CASE', 'WHERE', 'UNION ALL', 'JOIN', 'INSERT INTO', 'DELETE FROM')
    
    paragraphs = doc.paragraphs

    for i, para in enumerate(paragraphs):
        text = para.text.strip()
        text = clean_text(text)

        # Nếu đoạn văn trống, kết thúc khối SQL hiện tại nếu cần
        if not text:
            if current_block and not any(kw in current_block[-1].upper() for kw in sql_keywords):
                sql_data.append({'Heading': current_heading, 'SQL Query': "\n".join(current_block)})
                current_block = []
            continue
        
        # Kiểm tra nếu đoạn là heading và lưu lại
        if para.style.name.startswith('Heading'):
            current_heading = para.text.strip()
            continue
        
        if any(contains_exact_keyword(text, kw) for kw in sql_dml_keywords):
            for keyword in sql_dml_keywords:
                if contains_exact_keyword(text, keyword):
                    text = remove_text_before_keyword(text, keyword)
                    text = format_sql(text)
                    break
                    
            if contains_vietnamese(text):
                current_block = []
                continue
            
            current_block.append(text)
        
        elif current_block:
            current_block.append(text)

        if text.endswith(';'):
            sql_data.append({'Heading': current_heading, 'SQL Query': "\n".join(current_block)})
            current_block = []
            continue
                
    if current_block:
        sql_data.append({'Heading': current_heading, 'SQL Query': "\n".join(current_block)})

    sql_data = [data for data in sql_data if data['SQL Query'] and data['SQL Query'].strip()]

    # Tạo DataFrame từ danh sách sql_data
    df = pd.DataFrame(sql_data, columns=['Heading', 'SQL Query'])

    # Thêm cột 'Has JOIN' để đánh dấu câu lệnh có 'JOIN'
    df['Has JOIN'] = df['SQL Query'].str.contains(r'\bJOIN\b', case=False, na=False)
    
    return df


