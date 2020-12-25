#!/bin/bash

cd /home/waf/src

while true
do
    echo '[*] Starting server'

    node server.js &
    node waf.js &

    wait -n
    echo '[!] Server crashed'
    killall -9 node
    wait
    sleep 1
done
