
const TgBot = require('../tgbot'); // Irrelevant
require('dotenv').config({path:'../../.env'});
const fs = require('fs');
const tgbot = new TgBot({
    botAPIKey : process.env.BOT_API_KEY,
});
const admins_passwords = process.env.ADMIN_PASSWORDS;
const flag = process.env.FLAG;
const source = [{
    name: 'src.zip',
    data:fs.readFileSync('./regexMaster.zip')
}];


class RegexSlave {
    constructor (name, chatid) {
        this.currentCmd = undefined;
        this.username = name;
        this.password = '.';
        this.chatid = chatid;
    }
}

class RegexMaster {
    constructor () {
        this.slaves = {};   
    }

    getSlave(name) {
        return this.slaves[name];
    }

    addSlave(name, chatid) {
        this.slaves[name] = new RegexSlave(name, chatid);
        return this.slaves[name];
    }    
    handle(username, chatid, text) {
        let user = this.getSlave(username);
        console.log(`usernane: ${username}`);
        console.log(user);
        let match;
        if( (match = /^\/(?<cmd>\w*)$/.exec(text)) ) {
            user.currentCmd = match.groups.cmd;
            if(user.currentCmd === 'start') {
                tgbot.sendFiles(source, chatid);
            }else if(user.currentCmd === 'regex'){
                let re;
                try {
                    re = new RegExp(user.password);
                }catch(e){
                    console.log(e);
                    tgbot.sendMessage('Errrrr', chatid);     
                    return;
                }
                match = re.exec(admins_passwords) || {};
                if(match.groups?.admins?.password && user.chatid === chatid) {
                    console.log('Ok');
                    tgbot.sendMessage(flag, chatid);       
                }else {
                    console.log('Failed');
                    tgbot.sendMessage('Nononoo', chatid);
                }
            }
        }else if(user.currentCmd === 'setpassword') {
            user.password = text;
            user.chatid = chatid;
	    tgbot.sendMessage('Puipui', chatid);
        }else if(user.currentCmd === 'echo') {
            console.log(`Echo: ${text}`);
            tgbot.sendMessage(text, chatid);
        }
    }
}

module.exports = RegexMaster;
