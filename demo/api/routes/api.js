const conn = require('../connect');

module.exports = function (server) {
    server.get('/product', function (req, res) {
        conn.query("SELECT * FROM product LIMIT 8", function (err, data) {
            if (err) return new Error('loi roi' + err.sqlMessage);
            res.send({
                result: data,
                status: true
            });
        });
    });

    server.get('/product/:id', function (req, res) {
        var id = req.params.id;
        conn.query("SELECT * FROM product WHERE id = ?", [id], function (err, data) {
            if (err) return new Error('loi roi' + err.sqlMessage);
            res.send({
                result: data.length > 0 ? data[0] : null,
                status: true
            });
        });
    });

    server.get('/product-by-category/:id', function (req, res) {
        var id = req.params.id;
        conn.query("SELECT * FROM product WHERE category_id = ?", [id], function (err, data) {
            if (err) return new Error('loi roi' + err.sqlMessage);
            res.send({
                result: data,
                status: true
            });
        });
    });

    server.get('/category', function (req, res) {
        conn.query("SELECT * FROM category", function (err, data) {
            if (err) return new Error('loi roi' + err.sqlMessage);
            res.send({
                result: data,
                status: true
            });
        });
    });
}