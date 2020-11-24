import os
from prettytable import PrettyTable, from_db_cursor
from database import Database  # type: ignore


def getFilename(filename):
    __location__ = os.path.realpath(os.path.join(os.getcwd(), os.path.dirname(__file__)))
    return os.path.join(__location__, filename)


def one(database):
    query = '''SELECT * FROM DDH'''
    orders = from_db_cursor(database.select(query))
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


def three(database):
    customersTable = PrettyTable()
    customersTable.title = "TRI GIA DON HANG THEO THANG CUA KHACH"
    customersTable.field_names = ["MAKH", "TENKH", "TTG"]
    customersTable.align["TTG"] = "l"
    customers = database.selectAll('''
        SELECT A.MAKH, B.TENKH
        FROM DDH A, KHACH B
        WHERE A.MAKH = B.MAKH
            AND strftime("%Y", A.NGAYDH) = "2020"
        GROUP BY A.MAKH
    ''')
    for customer in customers:
        orders = database.selectAll('''
            SELECT strftime("%m", A.NGAYDH) AS THANG, SUM(B.SLDAT * C.DONGIA) AS TTG
            FROM DDH A, CTDDH B, HANG C
            WHERE A.MAKH = '{0}'
                AND A.MADDH = B.MADDH
                AND B.MAHG = C.MAHG
                AND strftime("%Y", A.NGAYDH) = "2020"
            GROUP BY THANG
        '''.format(customer[0]))
        valueTable = PrettyTable()
        valueTable.field_names = ["THANG", "TTG"]
        valueTable.align["TTG"] = "l"
        valueTable.header = False
        valueTable.border = False
        for order in orders:
            valueTable.add_row([order[0], order[1]])
        customersTable.add_row([customer[0], customer[1], valueTable])

    print(customersTable)


def main():
    os.system("cls")
    database = Database(getFilename("../databases/orders.db"))
    # one(database)
    # two(database)
    three(database)


if __name__ == "__main__":
    main()
