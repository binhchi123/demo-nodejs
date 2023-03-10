const conn = require('../connect');

module.exports = function (server) {
    server.get('/blog', function (req, res) {
        conn.query("SELECT * FROM blogs", function (err, data) {
            if (err) return new Error(err.sqlMessage);
            res.send({
                result: data,
                status: true
            })
        })
    })

    server.get('/blog/:id', function (req, res) {
        var id = req.params.id;
        conn.query("SELECT * FROM blogs WHERE id = ?", [id], function (err, data) {
            if (err) return new Error(err.sqlMessage);
            res.send({
                result: data.length > 0 ? data[0] : null,
                status: true
            })
        })
    })

    server.get('/blog-by-category/:id', function (req, res) {
        var id = req.params.id;
        conn.query("SELECT * FROM blogs WHERE blog_id = ?", [id], function (err, data) {
            if (err) return new Error(err.sqlMessage);
            res.send({
                result: data,
                status: true
            })
        })
    })

    server.get('/categories', function (req, res) {
        conn.query("SELECT * FROM blog_category", function (err, data) {
            if (err) return new Error(err.sqlMessage);
            res.send({
                result: data,
                status: true
            })
        })
    })
}