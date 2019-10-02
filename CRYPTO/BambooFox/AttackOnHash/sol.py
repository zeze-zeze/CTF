#coding=utf-8
import hashpumpy
from pwn import *
import hashlib

r = remote('bamboofox.cs.nctu.edu.tw', 30000)
#r = process(argv = ['python', 'server.py'])

res = r.recvuntil('input your token:').split('\n')
token = res[0].split(': ')[1].strip().decode('base64')
code = res[1].split(': ')[1].strip()
print 'token = {}\ncode = {}'.format(token, code)

mytoken = 'user=admin'
payload = hashpumpy.hashpump(code, token, mytoken, 40)
print payload

r.sendline(payload[1].encode('base64').strip())
r.recvuntil('input your authentication code: ')
r.sendline(payload[0])
print r.recvall(1)
