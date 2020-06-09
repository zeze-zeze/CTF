#coding=utf-8
from pwn import *
import string
import time

printable = string.printable[:62] + '!?_'

def send(payload):
    p = process(argv = ['python3', 'm4chine.py'])
    p.sendline(payload)
    res = p.recvall(1)
    p.close()
    return res

#flag = 'FLAG{W0w_BiiiiiiiiG_SiZe3e3!}'
flag = '}'
count = 0

while 1:
    for c1 in printable:
        res = send('FLAG{' + c1 + flag)
        print res.count('correct')
        if count != res.count('correct'):
            count = res.count('correct')
            flag = c1 + flag
            test = send(' ' + flag)
            print flag
            time.sleep(2)

