from pwn import *

r = remote('142.93.113.55', 31087)
r.sendlineafter('start:', 'start')
r.sendlineafter('Input:', 'a'*26)
res = r.recvline().split('Output: ')[1].strip()

flag = ''
for i in range(26):
    flag += chr(ord('a') ^ ord(res[i]))
print flag
