const mysql = require('mysql');

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'pj_nodejs'
});

conn.connect(function(err){
    if(err) return new Error('khong the ket noi csdl');
})

module.exports = conn;