from pwn import *
import string

block_size = 16
'''
noor2roAAAAAAAAA
AAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAA
flag
'''

flag1 = 'CDDC20{r3ally_re'
flag = '4l1y_n1c3_t0_mee'
while True:
    for guess in string.printable:
        print('try', guess)
        r = remote('hello.chall.cddc2020.nshc.sg', 12345)
        guess = flag + guess
        #payload = (16 - len('noor2ro')) * 'A' + (16 - len(guess)) * 'A' + guess + (16 - len(guess)) * 'A'
        #payload = (16 - len('noor2ro') - len(guess)) * 'A' + flag1 + guess + (16 - len(guess)) * 'A' + 100 * 'B'
        #payload = (16 - len('noor2ro') - len(guess)) * 'A' + flag1[9:] + flag2 + guess + (7 - len(guess)) * 'A'
        payload = (48 - 7 - len(guess)) * 'A' + guess + (32 - len(guess)) * 'A'
        #payload = 'A' * 1000
        payload = payload.encode('base64')
        r.send(payload)
        res = r.recvall(10)
        res = ''.join(res.split('\n')[3:]).strip()
        res = res.decode('base64').encode('hex')

        for i in range(0, len(res), 32):
            print(res[i:i+32])

        if res[64:96] == res[160:192]:
            flag = guess
            print('flag', flag)
            break
