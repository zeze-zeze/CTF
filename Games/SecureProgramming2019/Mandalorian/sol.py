from pwn import *
from Crypto.Util.number import *

#r = remote('34.82.101.212', 20001)
r = remote('edu-ctf.csie.org', 10192)
#r = remote('127.0.0.1', 10192)

def send(num):
    r.sendlineafter('> ', '2')
    r.sendline(str(num))
    m = int(r.recvline().split(' ')[2])
    return m

r.sendlineafter('> ', '1')
c = int(r.recvline().split(' ')[2])
e = int(r.recvline().split(' ')[2])
n = int(r.recvline().split(' ')[2])
print 'c: {}, e: {}, n: {}'.format(c, e, n)

min_ = 0
max_ = n
counter = 0

while min_ != max_:
    counter += 1
    coefficient = pow(pow(16, counter, n), e, n)

    remainder = send((coefficient * c) % n)	
    print 'min_: {}, max_:{}, remainder: {}'.format(min_, max_, remainder)

    for i in range(16):
        if remainder == ((-n * i) % 16):
            min_tmp = min_
            max_tmp = max_
            min_ = min_tmp + ((max_tmp - min_tmp) * i / 16)
            max_ = min_tmp + ((max_tmp - min_tmp) * (i + 1) / 16)

print long_to_bytes(min_)
