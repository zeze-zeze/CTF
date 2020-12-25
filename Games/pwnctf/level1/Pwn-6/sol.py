from pwn import *

r = remote('140.110.112.77', 2116)
#r = process('pwntools')
r.recvuntil(':)')
raw_input('debug')
r.sendline(p32(0x79487ff))

for i in range(1000):
    chal = r.recvuntil('?')
    print(chal)
    chal = chal.strip().split('\n')[-1].split('=')[0]
    answer = eval(chal)
    print(chal, str(answer))
    r.sendline(str(answer))
r.interactive()
