const express = require('express');
const bodyParser = require('body-parser');
const morgon = require('morgan');
const cors = require('cors');
const app = express();


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended:true
}));
app.use(cors());
app.use(morgon('dev'));

app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin","*");
    res.header(
        "Access-Control-Allow-Origin",
        "Origin, X-Request-With, Content-Type, Authorization, Accept"
    );
    if(res.method === 'OPTIONS'){
        res.header('Access-Control-Allow-Methods','PUT,POST, PATCH, DELETE');
        return res.status(200).json({});
    }
    next();
});
app.use('/api/test',(req,res)=>{
    return res.status(200).json({status: "success"})
})

app.use((req,res,next) => {
    const error = new Error('Not Found');
    error.status = 404;
    next(error);
});

app.use((error,req,res) => {
    return res.status(error.status || 500).json({ status: "error", code: error.status || 500, message: error.message || "Some error occurred", data: {} });
});
require('dotenv').config();

module.exports = app;
