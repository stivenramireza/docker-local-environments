#!/usr/local/bin/node
const express = require('express');
const app = express();

app.listen(process.env.PORT);

app.get('/person', function (req, res) {
    res.json({
        name:'Stiven',
        surname:'Ramirez'
    })
});