const app  = require('./app');
const http = require('http');
const httpServer = http.createServer(app);
require('dotenv').config();
const PORT = process.env.PORT || 8080;

httpServer.listen(PORT,() => {
    console.log("server running port : ",PORT);
});
