# coding=utf-8
from pwn import *

results = []

for i in range(256):
    r = remote('127.0.0.1', 30003)
    r.recvuntil('First give me your password:')
    r.sendline('98416')
    r.sendlineafter('Second give me your key: ', str(i))
    res = r.recvall(1)
    if 'Then Verify your flag: ' in res:
        print i
        results.append(i)

print results
