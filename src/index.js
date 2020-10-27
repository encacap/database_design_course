const sqlite3 = require("sqlite3");
const fs = require("fs");
const Database = require("./utilities/database");
const { number, date, items } = require("./utilities/random");
const { format, increase, fromString } = require("./utilities/date");

const name = "orders";

const database = new Database(new sqlite3.Database(`./src/databases/${name}.db`));

const backup = async () => {
    const date = new Date();
    const newName = `${name}.${date.getTime()}`;
    await fs.promises.copyFile(`./src/databases/${name}.db`, `./src/databases_backup/${newName}.db`);
};

const ID = (prefix, number) => {
    if (number < 10) return `${prefix}00${number}`;
    else if (number < 100) return `${prefix}0${number}`;
    return `${prefix}${number}`;
};

const DDH = async (customers) => {
    const years = [2018, 2019, 2020];
    const resultNumbers = 51;
    let round = 0;
    await database.clear("DDH");
    for (let i = 1; i <= resultNumbers; i += 1) {
        const ngayDH = date(years[round], i % 4);
        const ngayHL = increase(ngayDH, number(1, 10));
        const { MAKH: maKH } = customers[number(1, customers.length)];
        const query = `INSERT INTO DDH VALUES (
            '${ID("D", i)}',
            '${format(ngayDH)}',
            '${format(ngayHL)}',
            '${maKH}'
        )`;
        database.query(query);
        if (i % 17 === 0 && round <= 2) round += 1;
    }
};

const exportSQL = (...data) => {
    const tablesName = ["DDH", "CTDDH", "DOTGIAO", "CTDGH"];
    let string = "";
    data.forEach((table, index) => {
        string += `INSERT INTO ${tablesName[index]} VALUES \n`;
        table.forEach((row, rowIndex) => {
            let rowString = "(";
            const rows = Object.keys(row);
            rows.forEach((column, index) => {
                if (index !== rows.length - 1) rowString += `'${row[column]}', `;
                else rowString += `'${row[column]}'`;
            });
            if (rowIndex !== table.length - 1) rowString += "), \n";
            else rowString += ") \n";
            string += rowString;
        });
    });
    fs.writeFileSync(`./src/sql/${name}.sql`, string, { encoding: "utf-8" });
};

// customers.forEach((customer) => {
//     const { MAKH: customerID } = customer;
//     const query = `
//         UPDATE KHACH
//         SET MAKH = '${ID("K", Number(customerID.substr(1, customerID.length)))}'
//         WHERE MAKH = '${customerID}'
//     `;
//     database.query(query);
// });

const CTDDH = async (orders, products) => {
    const productsLength = products.length;
    await database.clear("CTDDH");
    orders.forEach((order) => {
        const { MADDH } = order;
        const orderProductNumbers = number(3, 7);
        const excludeProducts = [];
        for (let i = 1; i <= orderProductNumbers; i += 1) {
            let { MAHG } = products[number(0, productsLength - 1)];
            while (excludeProducts.includes(MAHG)) {
                MAHG = products[number(0, productsLength - 1)].MAHG;
            }
            const orderQuantity = number(1, 20);
            const query = `INSERT INTO CTDDH VALUES (
                '${MADDH}', 
                '${MAHG}', 
                ${orderQuantity}
            )`;
            database.query(query);
            excludeProducts.push(MAHG);
        }
    });
};

const DOTGIAO_CTDGH = async (ordersDetail) => {
    await database.clear("DOTGIAO");
    await database.clear("CTDGH");
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
    Object.keys(details).forEach((MADDH) => {
        const { products: orderProducts, orderDate } = details[MADDH];
        const deliveriesNumber = number(0, 5);
        for (let i = 1; i <= deliveriesNumber; i += 1) {
            const ngayDGH = format(increase(fromString(orderDate), number(1, 30)));
            const query = `INSERT INTO DOTGIAO (MADGH, NGAYDGH, MADDH) VALUES (
                '${ID("G", deliveryId)}', 
                '${ngayDGH}', 
                '${MADDH}'
            )`;
            database.query(query);
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
                    const query = `INSERT INTO CTDGH VALUES (
                        '${ID("G", deliveryId)}', 
                        '${MAHG}', 
                        '${deliveryProductNumbers}'
                    )`;
                    database.query(query);
                }
            });
            deliveryId += 1;
        }
    });
};

// products.forEach((product) => {
//     const { MALH: typeID } = product;
//     const query = `
//         UPDATE HANG
//         SET MALH = '${ID("L", Number(typeID.substr(1, typeID.length)))}'
//         WHERE MALH = '${typeID}'
//     `;
//     database.query(query);
// });

const index = async () => {
    await backup();
    const customers = await database.select("KHACH");
    await DDH(customers);
    const orders = await database.select("DDH");
    const products = await database.select("HANG");
    await CTDDH(orders, products);
    const ordersDetail = await database.select(
        "CTDDH",
        `
            SELECT A.*, B.NGAYDH
            FROM CTDDH A, DDH B
            WHERE A.MADDH = B.MADDH
        `
    );
    await DOTGIAO_CTDGH(ordersDetail);
    const deliveries = await database.select("DOTGIAO");
    const deliveriesDetail = await database.select("CTDGH");
    exportSQL(orders, ordersDetail, deliveries, deliveriesDetail);
};

// console.log("INSERT INTO DDH VALUES");
//     orders.forEach((order) => {
//         const { MADDH, NGAYDH, NGAYHL, MAKH } = order;
//         console.log(`('${MADDH}', '${NGAYDH}', '${NGAYHL}', '${MAKH}'),`);
//     });

index();
