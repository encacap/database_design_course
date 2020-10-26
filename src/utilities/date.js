const format = (date) => {
    const day = date.getDate() < 10 ? `0${date.getDate()}` : String(date.getDate());
    const month = date.getMonth() + 1 < 10 ? `0${date.getMonth() + 1}` : String(date.getMonth() + 1);
    const year = String(date.getFullYear());
    return `${year}-${month}-${day}`;
};

const fromString = (string) => {
    const [year, month, day] = string.split("-");
    const date = new Date();
    date.setFullYear(year);
    date.setMonth(month - 1);
    date.setDate(day);
    return date;
};

const increase = (date, numbers) => {
    const d = new Date(date);
    d.setDate(d.getDate() + numbers);
    return d;
};

module.exports = { format, increase, fromString };
