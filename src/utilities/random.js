const number = (min, max) => Math.floor(Math.random() * (max - min)) + min;

const date = (year, course) => {
    const monthOfSession = { 1: [1, 2, 3], 2: [4, 5, 6], 3: [7, 8, 9], 4: [10, 11, 12] };
    const date = new Date();
    const month = monthOfSession[course + 1][number(1, 3)];
    const day = number(1, 28);
    date.setFullYear(year);
    date.setMonth(month - 1);
    date.setDate(day);
    return date;
};

const items = (array, wishNumbers) => {
    const list = [...array];
    const itemsSelected = [];
    while (itemsSelected.length < wishNumbers) {
        const indexRandom = number(0, list.length - 1);
        itemsSelected.push(list[indexRandom]);
        list.splice(indexRandom, 1);
    }
    return itemsSelected;
};

module.exports = { number, date, items };
