#coding=utf-8
from pwn import *

r = remote('2019shell1.picoctf.com', 31615)
pro1 = r.recvuntil('Input').split('\n')[2].split(' ')
pro1_arr = ''
#print pro1
for i in range(3, 20):
  try:
    #print pro1[i]
    pro1_arr += chr(int(pro1[i], 2))
  except:
    break
#print pro1_arr
r.sendline(pro1_arr)

pro2 = r.recvuntil('Input').split('\n')[1].split(' ')
#print pro2
pro2_arr = ''
for i in range(5, 20):
  try:
    pro2_arr += chr(int(pro2[i], 8))
  except:
    break
#print pro2_arr
r.sendline(pro2_arr)

pro3 = r.recvuntil('Input').split('\n')[1].split(' ')[4]
r.sendline(unhex(pro3))

print r.recvall(1)
