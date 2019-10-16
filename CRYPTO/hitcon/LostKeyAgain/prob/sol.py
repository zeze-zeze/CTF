#coding=utf-8
from pwn import *
from Crypto.Util.number import *

'''
r = remote('3.115.26.78', 31337)
r.sendline('00')
print r.recvall(1)
'''

# 空
c1 = bytes_to_long('093154d3bc2ee766e732131990322d0e606b5265dc8163295ba79a73ada7379a59b0ba25ef79efcb8ce22f0f767984156f7b9c9e75b287173e3244474931237d31d7627c04938344e7ab00cdbddaed00acddea37bcb142b97c60036da7f92da99d9b1567e48525f4e5cac3b740c0165c1b0d94581339a36a5acd6f8f9d5c19'.decode('hex'))
# 00
c2 = bytes_to_long('078a082271d0aaed9feba4e75c7742e6e1de71c445410e192d3d1f6f3aad6ab01ab7d952b0530e399ae252dfd2081012df660dabb52f3636fc0359f1007d53503d3a8df0ae8b35592756663ef9efc963404a56ca93df5ebae0aaf0a78b1e4fa37349e23caf54e05f154d99430e2f9cd2180f0326b2c644873c9850a1615cdb'.decode('hex'))

'''
index = 2
counter = 0
ch = 0
while 1:
    found = pow(5782048, index)
    l = 1
    while 5782048 * pow(256, l) < found:
        l += 1
    l -= 1
    if 5782048 * pow(256, l) + 255 * pow(256, l-1) > found:
        print 'index : {}, l : {}'.format(index, l)
        break
    if index % 100==0:
        ch += 1
        if ch == 256:
            ch = 0
            counter += 1

        
        index
    index += 1
'''

n = int(''.join('28152 737628 466294 873353 447700 677616 804377 761540 447615 032304 834412 268931 104665 382061 141878 570495 440888 771518 997616 518312 198719 994551 237036 466480 942443 879131 169765 243306 374805 214525 362072 592889 691405 243268 672638 788064 054189 918713 974963 485194 898322 382615 752287 071631 796323 864338 560758 158133 372985 410715 951157'.split(' ')))


e = 0
while 1:
    if (c1 * pow(256, e, n)) % n == c2:
        print e
        break
    e += 1
    if not e % 100000:
        print 'fail {}'.format(e)

