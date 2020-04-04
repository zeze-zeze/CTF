from pwn import *

r = remote('indianguessing-01.play.midnightsunctf.se', 9191)
rocks = open('/home/zeze/CTF/general/rockyou.txt').read().split('\n')
r.recvuntil('> ')
for rock in rocks:
    if len(rock) == 0:
        continue
    try:
        int(rock)
        continue
    except:
        pass

    #print(rock)
    r.sendline(rock)
    res = r.recvuntil('> ')
    if 'could not convert string to float' not in res:
        print(rock)
        print(res)
    
