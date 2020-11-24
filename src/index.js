const sqlite3 = require("sqlite3").verbose();
const fs = require("fs");
const ora = require("ora");
const logSymbols = require("log-symbols");
const sqlFormatter = require("sql-formatter");

const Database = require("./utilities/database");
const { number, date, items } = require("./utilities/random");
const { format, increase, fromString } = require("./utilities/date");

const name = "orders";
const database = new Database(new sqlite3.Database(`./src/databases/${name}.db`));

let sql = "";

const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

const backup = async () => {
    const date = new Date();
    const newName = `${name}.${date.getTime()}`;
    await fs.promises.copyFile(`./src/databases/${name}.db`, `./src/databases_backup/${newName}.db`);
};

const exportSQL = async () => {
    const effect = loading.show("Exporting SQL...");
    try {
        await fs.promises.writeFile(
            `./src/sql/${name}.sql`,
            sqlFormatter.format(sql, {
                indent: "    ",
            }),
            { encoding: "utf-8" }
        );
        loading.hide(effect, `Exporting SQL... ${color("Success!", 0)}`);
        return undefined;
    } catch (error) {
        loading.hide(effect, `Exporting SQL... ${color(`Error! (${error.message})`, 1)}`, 1);
        return error;
    }
};

const ID = (prefix, number) => {
    if (number < 10) return `${prefix}000${number}`;
    else if (number < 100) return `${prefix}00${number}`;
    else if (number < 1000) return `${prefix}0${number}`;
    return `${prefix}${number}`;
};

const color = (message, type = 0) => {
    const colors = ["\x1b[32m", "\x1b[31m", "\x1b[0m"];
    return `${colors[type]}${message}\x1b[0m`;
};

const loading = {
    show: (message) => ora(message).start(),
    hide: (throbber, message, symbol = 0) => {
        const symbols = [logSymbols.success, logSymbols.error];
        throbber.stopAndPersist({
            symbol: symbols[symbol],
            text: message,
        });
    },
};

const standardizeTable = async (table, columns) => {
    const effect = loading.show(`Fetching and Standardizing ${table}...`);
    let data;
    try {
        data = await database.select(table);
        data.forEach((row) => {
            columns.forEach((column) => {
                const rowID = row[column];
                row[column] = ID(rowID.slice(0, 1), Number(rowID.slice(1)));
            });
        });
        loading.hide(effect, `Fetching and Standardizing ${table}... ${color("Success!", 0)}`);
        return data;
    } catch (error) {
        loading.hide(effect, `Fetching and Standardizing ${table}... ${color(`Error! (${error.message})`, 1)}`, 1);
        throw error;
    }
};

const dropTables = async (tables) => {
    for (let i = 0; i < tables.length; i += 1) {
        const table = tables[i];
        const effect = loading.show(`Removing ${table}...`);
        try {
            await database.query(`DROP TABLE IF EXISTS ${table}`);
            loading.hide(effect, `Removing ${table}... ${color("Success!", 0)}`);
        } catch (error) {
            loading.hide(effect, `Removing ${table}... ${color(`Error! (${error.message})`, 1)}`, 1);
            throw error;
        }
    }
};

const LOAIHG = async (types) => {
    const effect = loading.show("Creating LOAIHG...");
    let query = `
        CREATE TABLE IF NOT EXISTS "LOAIHG" (
            "MALH"	VARCHAR(4) NOT NULL,
            "TENLH"	TEXT NOT NULL,
            "MOTALH"	TEXT,
            PRIMARY KEY("MALH")
        );
    `;
    await database.query(query);
    sql += query;
    query = "INSERT INTO LOAIHG(MALH, TENLH, MOTALH) VALUES \n";
    types.forEach((type, index) => {
        const { MALH, TENLH, MOTALH } = type;
        query += `('${MALH}', '${TENLH}', '${MOTALH}')`;
        if (index < types.length - 1) query += ", \n";
        else query += ";";
    });
    sql += query;
    try {
        await database.query(query);
        await loading.hide(effect, `Creating LOAIHG... ${color("Success!", 0)}`);
    } catch (error) {
        await loading.hide(effect, `Creating LOAIHG... ${color(`Error! (${error.message})`, 1)}`, 1);
        throw error;
    }
};

const HANG = async (products) => {
    const effect = loading.show("Creating HANG...");
    let query = `
        CREATE TABLE IF NOT EXISTS "HANG" (
            "MAHG"	VARCHAR(4) NOT NULL,
            "TENHG"	TEXT NOT NULL,
            "DONGIA"	REAL NOT NULL,
            "MALH"	VARCHAR(4) NOT NULL,
            PRIMARY KEY("MAHG"),
            FOREIGN KEY("MALH") REFERENCES "LOAIHG"("MALH")
        );
    `;
    await database.query(query);
    sql += query;
    query = "INSERT INTO HANG(MAHG, TENHG, DONGIA, MALH) VALUES \n";
    products.forEach((product, index) => {
        const { MAHG, TENHG, DONGIA, MALH } = product;
        query += `('${MAHG}', '${TENHG}', '${DONGIA}', '${MALH}')`;
        if (index < products.length - 1) query += ", \n";
        else query += ";";
    });
    sql += query;
    try {
        await database.query(query);
        loading.hide(effect, `Creating HANG... ${color("Success!", 0)}`);
    } catch (error) {
        loading.hide(effect, `Creating HANG... ${color(`Error! (${error.message})`, 1)}`, 1);
        throw error;
    }
};

const KHACH = async (customers) => {
    const effect = loading.show("Creating KHACH...");
    let query = `
        CREATE TABLE IF NOT EXISTS "KHACH" (
            "MAKH"	VARCHAR(4) NOT NULL,
            "TENKH"	TEXT NOT NULL,
            "DTKH"	VARCHAR(10) NOT NULL,
            "DCKH"	VARCHAR(255) NOT NULL,
            PRIMARY KEY("MAKH")
        );
    `;
    await database.query(query);
    sql += query;
    query = "INSERT INTO KHACH(MAKH, TENKH, DTKH, DCKH) VALUES \n";
    customers.forEach((customer, index) => {
        const { MAKH, TENKH, DTKH, DCKH } = customer;
        query += `('${MAKH}', '${TENKH}', '${DTKH}', '${DCKH}')`;
        if (index < customers.length - 1) query += ", \n";
        else query += ";";
    });
    sql += query;
    try {
        await database.query(query);
        loading.hide(effect, `Creating KHACH... ${color("Success!", 0)}`);
    } catch (error) {
        loading.hide(effect, `Creating KHACH... ${color(`Error! (${error.message})`, 1)}`, 1);
        throw error;
    }
};

const DDH = async (customers) => {
    const effect = loading.show("Creating DDH...");
    let query = `
        CREATE TABLE IF NOT EXISTS "DDH" (
            "MADDH"	VARCHAR(4) NOT NULL,
            "NGAYDH"	DATE NOT NULL,
            "NGAYHL"	DATE NOT NULL,
            "MAKH"	VARCHAR(4) NOT NULL,
            PRIMARY KEY("MADDH"),
            FOREIGN KEY("MAKH") REFERENCES "KHACH"("MAKH")
        );
    `;
    await database.query(query);
    sql += query;
    const years = [2018, 2019, 2020];
    const resultNumbers = 50;
    const orders = [];
    let round = 0;
    query = "INSERT INTO DDH(MADDH, NGAYDH, NGAYHL, MAKH) VALUES \n";
    for (let i = 1; i <= resultNumbers * 3; i += 1) {
        const ngayDH = date(years[round], i % 4);
        const ngayHL = increase(ngayDH, number(1, 10));
        const { MAKH } = customers[number(1, customers.length)];
        const MADDH = ID("D", i);
        const NGAYDH = format(ngayDH);
        const NGAYHL = format(ngayHL);
        query += `('${MADDH}', '${NGAYDH}', '${NGAYHL}', '${MAKH}')`;
        orders.push({ MADDH, NGAYDH, NGAYHL, MAKH });
        if (i < resultNumbers * 3) query += ", \n";
        else query += "; \n";
        if (i % resultNumbers === 0 && round <= 2) round += 1;
    }
    sql += query;
    try {
        await database.query(query);
        loading.hide(effect, `Creating DDH... ${color("Success!", 0)}`);
        return orders;
    } catch (error) {
        loading.hide(effect, `Creating DDH... ${color(`Error! (${error.message})`, 1)}`, 1);
        throw error;
    }
};

const CTDDH = async (orders, products) => {
    const effect = loading.show("Creating CTDDH...");
    let query = `
        CREATE TABLE "CTDDH" (
            "MADDH"	VARCHAR(4) NOT NULL,
            "MAHG"	VARCHAR(4) NOT NULL,
            "SLDAT"	INTEGER NOT NULL DEFAULT 1,
            FOREIGN KEY("MADDH") REFERENCES "DDH"("MADDH"),
            FOREIGN KEY("MAHG") REFERENCES "HANG"("MAHG"),
            PRIMARY KEY("MADDH","MAHG")
        );
    `;
    await database.query(query);
    sql += query;
    const productsLength = products.length;
    const ordersDetail = [];
    query = "INSERT INTO CTDDH(MADDH, MAHG, SLDAT) VALUES \n";
    orders.forEach((order) => {
        const { MADDH, NGAYDH } = order;
        const orderProductNumbers = number(3, 7);
        const excludeProducts = [];
        for (let i = 1; i <= orderProductNumbers; i += 1) {
            let { MAHG } = products[number(0, productsLength - 1)];
            while (excludeProducts.includes(MAHG)) {
                MAHG = products[number(0, productsLength - 1)].MAHG;
            }
            const orderQuantity = number(1, 20);
            query += `('${MADDH}', '${MAHG}', ${orderQuantity}),`;
            ordersDetail.push({ MADDH, MAHG, SLDAT: orderQuantity, NGAYDH });
            excludeProducts.push(MAHG);
        }
    });
    query = query.slice(0, query.length - 1) + "; \n";
    sql += query;
    try {
        await database.query(query);
        loading.hide(effect, `Creating CTDDH... ${color("Success!", 0)}`);
        return ordersDetail;
    } catch (error) {
        loading.hide(effect, `Creating CTDDH... ${color(`Error! (${error.message})`, 1)}`, 1);
        throw error;
    }
};

const DOTGIAO_CTDGH = async (ordersDetail) => {
    const effect = loading.show("Creating DOTGIAO and CTDGH...");
    let query = `
        CREATE TABLE "DOTGIAO" (
            "MADGH"	VARCHAR(4) NOT NULL,
            "MADDH"	VARCHAR(4) NOT NULL,
            "NGAYDGH"	DATE NOT NULL,
            FOREIGN KEY("MADDH") REFERENCES "DDH"("MADDH"),
            PRIMARY KEY("MADDH","MADGH")
        );
    `;
    await database.query(query);
    sql += query;
    const details = {};
    ordersDetail.forEach((detail) => {
        const { MADDH, MAHG, SLDAT, NGAYDH } = detail;
        let order = details[MADDH] || {};
        if (!order.orderDate) {
            details[MADDH] = { orderDate: NGAYDH };
            order = details[MADDH];
        }
        if (order.products) order.products.push({ MAHG, SLDAT });
        else order.products = [{ MAHG, SLDAT }];
    });
    let deliveryId = 1;
    let deliveryQuery = "INSERT INTO DOTGIAO (MADGH, NGAYDGH, MADDH) VALUES \n";
    let deliveryProductsQuery = "INSERT INTO CTDGH (MADGH, MAHG, SLGH) VALUES \n";
    Object.keys(details).forEach((MADDH) => {
        const { products: orderProducts, orderDate } = details[MADDH];
        const deliveriesNumber = number(0, 5);
        for (let i = 1; i <= deliveriesNumber; i += 1) {
            const ngayDGH = format(increase(fromString(orderDate), number(1, 30)));
            deliveryQuery += `('${ID("G", deliveryId)}', '${ngayDGH}', '${MADDH}'), \n`;
            let deliveryProductsNumber,
                deliveryProducts,
                deliveryAll = false;
            if (i !== deliveriesNumber) {
                deliveryProductsNumber = number(1, orderProducts.length);
                deliveryProducts = items(orderProducts, deliveryProductsNumber);
            } else {
                deliveryProductsNumber = orderProducts.length;
                deliveryProducts = orderProducts;
                deliveryAll = true;
            }
            deliveryProducts.forEach((deliveryProduct) => {
                const { MAHG, SLDAT } = deliveryProduct;
                const deliveryProductNumbers = !deliveryAll ? number(1, SLDAT) : SLDAT;
                if (deliveryProductNumbers > 0) {
                    const productIndex = orderProducts.indexOf(deliveryProduct);
                    orderProducts[productIndex] = { MAHG, SLDAT: SLDAT - deliveryProductNumbers };
                    deliveryProductsQuery += `('${ID("G", deliveryId)}', '${MAHG}', '${deliveryProductNumbers}'), \n`;
                }
            });
            deliveryId += 1;
        }
    });
    deliveryQuery = deliveryQuery.trim(deliveryQuery).slice(0, deliveryQuery.length - 3) + "; \n";
    deliveryProductsQuery =
        deliveryProductsQuery.trim(deliveryProductsQuery).slice(0, deliveryProductsQuery.length - 3) + "; \n";
    sql += deliveryQuery;
    query = `
        CREATE TABLE "CTDGH" (
            "MADGH"	VARCHAR(4) NOT NULL,
            "MAHG"	VARCHAR(4) NOT NULL,
            "SLGH"	INTEGER NOT NULL,
            FOREIGN KEY("MADGH") REFERENCES "DOTGIAO"("MADGH"),
            FOREIGN KEY("MAHG") REFERENCES "HANG"("MAHG"),
            PRIMARY KEY("MADGH","MAHG")
        );
    `;
    sql += query;
    sql += deliveryProductsQuery.trim(deliveryProductsQuery).slice(0, deliveryProductsQuery.length - 3) + "; \n";
    try {
        await database.query(deliveryQuery);
        await database.query(query);
        await database.query(deliveryProductsQuery);
        loading.hide(effect, `Creating DOTGIAO and CTDGH... ${color("Success!", 0)}`);
    } catch (error) {
        loading.hide(effect, `Creating DOTGIAO and CTDGH... ${color(`Error! (${error.message})`, 1)}`, 1);
        throw error;
    }
};

const index = async () => {
    try {
        await backup();
        const products = await standardizeTable("HANG", ["MAHG", "MALH"]);
        const productTypes = await standardizeTable("LOAIHG", ["MALH"]);
        const customers = await standardizeTable("KHACH", ["MAKH"]);
        await dropTables(["CTDGH", "DOTGIAO", "CTDDH", "DDH", "HANG", "LOAIHG", "KHACH"]);
        await LOAIHG(productTypes);
        await HANG(products);
        await KHACH(customers);
        const orders = await DDH(customers);
        const ordersDetail = await CTDDH(orders, products);
        await DOTGIAO_CTDGH(ordersDetail);
        await exportSQL();
    } catch (error) {
        console.log(logSymbols.error, "An error occurred. Please fix it and try again!\n", error.message);
    } finally {
        console.log(logSymbols.info, "Done! Provided by Nguyen Khac Khanh (Encacap) 👍");
    }
};

console.clear();
index();
