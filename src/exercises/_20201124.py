import os
from prettytable import PrettyTable, from_db_cursor
from database import Database  # type: ignore


def getFilename(filename):
    __location__ = os.path.realpath(os.path.join(os.getcwd(), os.path.dirname(__file__)))
    return os.path.join(__location__, filename)


def one(database):
    query = '''SELECT * FROM DDH'''
    orders = PrettyTable.from_db_cursor(database.select(query))
    print(orders)


def two(database):
    types = database.selectAll('''
        SELECT * 
        FROM LOAIHG
    ''')
    table = PrettyTable()
    table.title = "DANH SACH TAT CA HANG TRONG KHO"
    table.field_names = ["MALH", "TENLH", "HANG"]
    for productType in types:
        productTable = PrettyTable()
        productTable.border = False
        productTable.header = False
        products = database.selectAll('''
            SELECT *
            FROM HANG
            WHERE MALH = 'L0001'
        ''')
        for product in products:
            productTable.field_names = ["MAHG", "TENHG"]
            productTable.add_row([product[0], product[1]])
        table.add_row([productType[0], productType[1], productTable])

    print(table)


def main():
    os.system("cls")
    database = Database(getFilename("../databases/orders.db"))
    # one(database)
    two(database)


if __name__ == "__main__":
    main()
