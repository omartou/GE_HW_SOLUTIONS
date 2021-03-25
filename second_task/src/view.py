import controller
# print table and column names


def print_table_and_column_names(all_file_path):
    for i in all_file_path:
        return controller.get_table_and_column_name(controller.open_file(i))
