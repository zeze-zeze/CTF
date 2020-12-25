const fs = require('fs');
const http = require('http');
const assert = require('assert');


const flag = fs.readFileSync('/home/waf/flag').toString().trim();
const port = 8888

assert.ok(flag.match(/^BALSN\{[^}]+\}$/))


const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end(`The flag is ${flag}.`);
});


server.listen(port, '127.0.0.1', () => {
    console.log('[*] Listening on ', server.address())
})
