import os
import re

# find all .sql file


def find_all_sql_file(path):
    roots = []
    for root, dirs, files in os.walk(path):
        for file in files:
            if file.endswith(".sql"):
                roots.append(os.path.join(root, file))
    return roots

# open .sql files return lines where line contains "ALTER"


def open_file(file_name):
    line_constains_alter = []
    with open(file_name) as file:
        data = file.readlines()
        for item in data:
            if "alter" in item.lower():
                line_constains_alter.append(item.strip('\n'))

    splitted_lists = []
    for i in line_constains_alter:
        splitted_lists.append(i.split(' '))

    return splitted_lists

# get table.column -> [[]]


def get_table_and_column_name(alter_lists):
    table_name_position = 2
    valid_data = []

    for i in alter_lists:
        if not validate_table_name(i[table_name_position]):
            column_name_position = get_index_of_column_name(i)
            valid_data.append(
                [str(i[table_name_position]) + '.' + str(i[column_name_position])])
    return valid_data


def validate_table_name(inputString):
    matched = re.findall("dw\d{2,2}$", inputString)
    is_match = bool(matched)

    return is_match


def get_index_of_column_name(string_list):
    checkpoints = ['add', 'drop', 'modify', 'change']
    for i in string_list:
        if i.lower() in checkpoints:
            return string_list.index(i) + 2
