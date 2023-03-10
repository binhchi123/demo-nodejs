const express = require('express');
// const ejs = require('ejs');
// const bodyParser = require('body-parser');
const cors = require('cors');

const server = express();

// server.use(bodyParser.urlencoded({extended: false}));
// server.use(bodyParser.json());
server.use(cors());
// server.set('view engine', 'html');
// server.engine('html', ejs.renderFile);

require('./routes/api')(server);

server.listen(3000, function(){
    console.log('server dang mo: http://localhost:3000');
})