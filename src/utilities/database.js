class Database {
    constructor(database) {
        this.database = database;
    }

    query(string) {
        const { database } = this;
        return new Promise((resolve, reject) => {
            database.run(string, [], (error) => {
                if (!error) resolve("Success!");
                else reject(error);
            });
        });
    }

    select(table, customQuery) {
        const query = !customQuery ? `SELECT * FROM ${table}` : customQuery;
        const { database } = this;
        return new Promise((resolve, reject) => {
            database.all(query, [], (error, rows) => {
                if (error) reject(error);
                else resolve(rows);
            });
        });
    }

    clear(table) {
        const query = `DELETE FROM ${table}`;
        const { database } = this;
        return new Promise((resolve, reject) => {
            database.run(query, [], (error, rows) => {
                if (error) reject(error);
                else resolve(rows);
            });
        });
    }
}

module.exports = Database;
