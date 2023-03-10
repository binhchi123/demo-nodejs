const mysql = require('mysql');
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'db',
    multipleStatements: true
});

conn.connect(function (err) {
    if (err) return new Error('khong the ket noi toi csdl');
});

module.exports = conn;
