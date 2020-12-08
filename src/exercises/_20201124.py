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


def four(database):
    customersTable = PrettyTable()
    # customersTable.align["TTG"] = "l"
    customers = database.select('''
        SELECT A.MAKH, B.*, C.TENHG
        FROM DDH A, CTDDH B, HANG C
        WHERE A.MADDH = B.MADDH
            AND B.MAHG = C.MAHG
            AND A.MAKH = 'K0030'
    ''')
    customersTable = from_db_cursor(customers)
    customersTable.title = "CAC DON DAT HANG CUA KHACH 'K0030'"
    customersTable.align["TENHG"] = 'l'
    print(customersTable)


def five(database):
    primaryTable = PrettyTable()
    primaryTable.title = "T01"
    primaryTable.field_names = ["MADDH", "NGAYDH", "NGAYHL", "MAKH", "TENKH", "MAHG", "DG", "SLD", "TRIGIA"]
    primaryTable.align["DG"] = 'r'
    primaryTable.align["SLD"] = 'r'
    primaryTable.align["TRIGIA"] = 'r'
    orders = database.selectAll('''
        SELECT A.MADDH, A.NGAYDH, A.NGAYHL, A.MAKH, B.TENKH
        FROM DDH A, KHACH B
        WHERE A.MAKH = B.MAKH
    ''')
    for order in orders:
        # detailTable = PrettyTable()
        primaryTable.add_row([order[0], order[1], order[2], order[3], order[4], "", "", "", ""])
        orderDetails = database.selectAll('''
            SELECT A.MAHG, B.TENHG, B.DONGIA, A.SLDAT, A.SLDAT * B.DONGIA AS TRIGIA
            FROM CTDDH A, HANG B
            WHERE A.MADDH = '{0}'
                AND A.MAHG = B.MAHG
        '''.format(order[0]))
        value = 0
        for orderDetail in orderDetails:
            primaryTable.add_row(["", "", "", "", "", orderDetail[0], round(
                int(orderDetail[2]), 2), orderDetail[3], round(int(orderDetail[4]), 2)])
            value += orderDetail[4]
        primaryTable.add_row(["", "", "", "", "", "-----", "-----", "-----", "-----"])
        primaryTable.add_row(["", "", "", "", "", "", "", "TRI GIA DON HANG", value])
        # primaryTable.add_row(["******", "******", "******", "******", "******", "******", "******", "******", "******"])
    print(primaryTable)


def main():
    os.system("cls")
    database = Database(getFilename("../databases/orders.db"))
    # one(database)
    # two(database)
    # three(database)
    five(database)


if __name__ == "__main__":
    main()
