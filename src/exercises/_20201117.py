import os
from database import Database  # type: ignore


def getFilename(filename):
    __location__ = os.path.realpath(os.path.join(os.getcwd(), os.path.dirname(__file__)))
    return os.path.join(__location__, filename)


def main():
    os.system("cls")
    database = Database(getFilename("../databases/orders.db"))

    print('''Tri gia don dat hang cua nam 2020 theo tung thang: ''')

    valuePerMonths = database.selectAll('''
        SELECT D.MONTH, SUM(D.GTDDH) AS TTG
        FROM (
            SELECT strftime("%m", A.NGAYDH) AS MONTH, SUM(B.SLDAT * C.DONGIA) AS GTDDH
            FROM DDH A, CTDDH B, HANG C
            WHERE strftime("%Y", A.NGAYDH) = "2020"
                AND A.MADDH = B.MADDH
                AND B.MAHG = C.MAHG
            GROUP BY A.MADDH
        ) D
        GROUP BY D.MONTH
    ''')

    for month in valuePerMonths:
        print(month)

    print("--------------------------")
    print("Thang co gia tri don dat hang lon nhat cua nam 2020: ")

    highestMonthValue = database.selectOne('''
        SELECT MAX(TTG)
        FROM (
            SELECT D.MONTH, SUM(D.GTDDH) AS TTG
            FROM (
                SELECT strftime("%m", A.NGAYDH) AS MONTH, SUM(B.SLDAT * C.DONGIA) AS GTDDH
                FROM DDH A, CTDDH B, HANG C
                WHERE strftime("%Y", A.NGAYDH) = "2020"
                    AND A.MADDH = B.MADDH
                    AND B.MAHG = C.MAHG
                GROUP BY A.MADDH
            ) D
            GROUP BY D.MONTH
        )
    ''')

    print(highestMonthValue)

    database.terminate()


if __name__ == "__main__":
    main()
