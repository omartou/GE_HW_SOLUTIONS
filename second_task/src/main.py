import controller


def countel(string_name):
    dicti = {}

    for i in string_name:
        if i in dicti:
            dicti[i] += 1
        else:
            dicti[i] = 1

    return dicti


def main():
    path = "/Users/omartoure/Desktop/CodeCool/GE_HW/GE-homework-task2/testdir"
    all_file_path = controller.find_all_sql_file(path)

    for i in all_file_path:
        print(controller.get_table_and_column_name(controller.open_file(i)))

    print(countel("omaar"))


if __name__ == '__main__':
    main()
