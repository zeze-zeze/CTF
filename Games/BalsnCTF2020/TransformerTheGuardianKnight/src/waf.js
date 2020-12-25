const net = require('net');
const { Transform } = require('stream');


const flagPort = 8888
const publicPort = 8889


class WAF extends Transform {
    _transform (data, encoding, callback) {
        data = data.toString('ascii').replace(/BALSN{([^}]*)/g, (m, c) =>
            'BALSN{' + Array(c.length).fill('REDACTED_').join('').slice(0, c.length)
        )
        console.log('in the transform:\n', data);
        callback(null, data)
    }
};


const server = net.createServer(toc => {
    const tos = net.createConnection({port: flagPort}, () => {
        toc.pipe(tos).pipe(new WAF()).pipe(toc)
    })
    toc.on('error', e => { toc.destroy(); tos.destroy() })
    tos.on('error', e => { toc.destroy(); tos.destroy() })
})


server.listen(publicPort, '0.0.0.0', () => {
    console.log('[*] Listening on ', server.address());
});
