const FormData = require('form-data');
const fetch = require('node-fetch');
class TelegramBot {
    constructor ({
        botAPIKey : botAPIKey,
        defaultChatId : defaultChatId,
        defaultCb : defaultCb = console.log
    } = {}) {
        this.botAPIKey = botAPIKey;
        this.defaultChatId = defaultChatId;
        this.defaultCb = defaultCb;
        this.reqQueue = [];
        this.requestManager();
    }


    async requestManager() {
        setInterval(()=>{
            let req = this.reqQueue.shift();
            if(req != undefined){
                console.log(req.toString());
                req();
            }
        }, 1000);        
    }

    addTask(cb) {
        this.reqQueue.push(cb);
    }
    sendFiles(files, chatId=this.defaultChatId, cb=this.defaultCb){
        let url = `https://api.telegram.org/bot${this.botAPIKey}/sendDocument`;
        // let url = `http://127.0.0.1:8080/bot${this.botAPIKey}/sendDocument`;
        for(let f of files) {
            const formdata = new FormData();
            formdata.append('chat_id', chatId);
            formdata.append('document', f.data, f.name);
            this.addTask(()=>{
                console.log('asd');
                console.log(formdata);
                fetch(url, {
                    method:'POST',
                    body: formdata,
                })
                .then(res=>res.json())
                .then(res=>{
                    console.log('sendfiles');
                    console.log(res);
                    // cb(res);
                });
            });
       }
    }

    sendMessage(msg, chatId=this.defaultChatId, cb=this.defaultCb) {
        let url = `https://api.telegram.org/bot${this.botAPIKey}/sendMessage`;
        this.addTask(()=>{
            fetch(url, {
                method:'POST',
                body: JSON.stringify({
                    chat_id: chatId,
                    text: msg
                }),
                headers : {
                    'Content-Type' : 'application/json'
                }
            })
            .then(res=>res.json())
            .then(res=>cb(res));
        });
    }

    
    deleteMessage(msgId, chatId=this.defaultChatId, cb=this.defaultCb) {
        let url = `https://api.telegram.org/bot${this.botAPIKey}/deleteMessage?chat_id=${chatId}&message_id=${msgId}`;
        this.addTask(()=>{
            fetch(url, {
                method:'GET',
                headers : {
                    'Content-Type' : 'application/json'
                }
            })
            .then(res=>res.json())
            .then(res=>cb(res));
        })
        
    }


}


module.exports = TelegramBot;