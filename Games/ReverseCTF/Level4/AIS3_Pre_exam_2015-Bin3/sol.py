from pwn import *
print(unhex(hex(0xDDDDAAAADADADDAA ^ 0xBCB4DEC4BFB7B8CE)[2:]))
