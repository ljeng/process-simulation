import os
import sys
import PyPDF2

pdf_folder = sys.argv[1]
text_folder = os.path.join(pdf_folder, 'text')
if not os.path.exists(text_folder):
    os.makedirs(text_folder)
for filename in os.listdir(pdf_folder):
    if filename.endswith('.pdf'):
        pdf_path = os.path.join(pdf_folder, filename)
        reader = PyPDF2.PdfReader(open(pdf_path, 'rb'))
        text = ''
        for page_number in range(len(reader.pages)):
            text += reader.pages[page_number].extract_text()
        text_filename = os.path.splitext(filename)[0] + '.txt'
        text_filepath = os.path.join(text_folder, text_filename)
        text_file = open(text_filepath, 'w', encoding='utf-8')
        text_file.write(text)