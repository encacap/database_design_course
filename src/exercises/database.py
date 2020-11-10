import sqlite3
from sqlite3.dbapi2 import connect


class Database:
    def __init__(self, filename):
        connect = sqlite3.connect(filename)
        self.connect = connect
        self.cursor = connect.cursor()

    def selectOne(self, query):
        self.cursor.execute(query)
        return self.cursor.fetchone()

    def selectAll(self, query):
        self.cursor.execute(query)
        return self.cursor.fetchall()

    def terminate(self):
        self.connect.commit()
        self.connect.close()
