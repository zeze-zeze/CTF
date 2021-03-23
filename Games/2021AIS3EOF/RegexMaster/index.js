require('dotenv').config();
const fetch = require('node-fetch');
const express = require('express');
const bodyparser = require('body-parser');
const RegexMaster = require('./lib/regexMaster');
const fs = require('fs');


const app = express();

const regexMaster = new RegexMaster();

app.use(bodyparser.urlencoded({extended:false}));
app.use(bodyparser.json());

app.post(`/getUpdates`,async (req, res) => {
    res.send('ack').end();
    console.log('#########################');
    console.log(req.body);
    let message = req.body.message;
    let chatid = message.chat?.id;
    if(!message || !chatid) {
        return;
    }
    let username = 'Puipui';
    let text = '';
    username = message.from?.first_name + message.from?.last_name;
    text = message.text;
    
    let slave  = regexMaster.getSlave(username);
    if(slave === undefined) {
        regexMaster.addSlave(username, chatid);
    }
    regexMaster.handle(username, chatid, text);
});

app.use((err, req, res,next) => {
    console.log('Errrrrr: '+err.toString());
    return res.status(500);
});

app.listen(process.env.PORT, '127.0.0.1',()=>{
    console.log(`listen on ${process.env.PORT}`);
});
