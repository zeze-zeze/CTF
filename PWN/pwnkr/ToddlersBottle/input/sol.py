#coding=utf-8
from pwn import *

# stage1
argv = ['./input']
for i in range(1, 100):
  if i == ord('A'):
    argv.append('\x00')
  elif i == ord('B'):
    argv.append('\x20\x0a\x0d')
  elif i == ord('C'):
    argv.append('8999')
  else:
    argv.append('a')
###

# stage3
env = {'\xde\xad\xbe\xef':'\xca\xfe\xba\xbe'}
###

# stage4
open('\x0a', 'w').write('\x00'*4)
###

# stage5
s = remote('localhost', 8999)
s.sendline('\xde\xad\xbe\xef')

# stage2-1
open('./a', 'w').write('\x00\x0a\x02\xff')
stderr = open('./a', 'r')
###

debug = 1
if debug:
  p = process(argv = argv, stderr = stderr, env = env)
else:
  s = ssh('input2@pwnable.kr', 2222)
  s.set_working_directory('/home/input')
  p = s.process(argv= argv)

# stage2-2
p.sendline('\x00\x0a\x00\xff')
###

print p.recvall(1) 
