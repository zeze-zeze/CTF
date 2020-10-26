from pwn import *
cipher = unhex('414141c6b1b9a3b593bea3aa93a9a0bca1a5bf93bfa593a9a8a3afa0a0a9a4bf93a7a3b7ff9f858d')[::-1]
print(cipher)

flag = ''
for c in cipher:
    flag += chr(c ^ 0xcc)
print(flag)
