from pwn import *
import string

def connect(guess):
    r = remote('60.250.197.227', 11001)
    r.sendline(guess)
    res = int(r.recvall(1).split(' ')[5])
    return res

now = 341
flag = 'AIS3{A1r1ght_U_4r3_my_3n3'
while True:
    for s in string.printable:
        print('guess {}'.format(s))
        #print(flag)
        res = connect(flag + s)
        if res - now >= 10:
            max_ = 0
            min_ = 99999999999999999999
            for i in range(40):
                res = connect(flag + s)
                if max_ < res: 
                    max_ = res
                if min_ > res:
                    min_ = res
            avg = (max_ + min_) / 2
            
            if avg < now + 10:
                continue

            now = avg
            flag += s
            print('avg {}'.format(now))
            print(flag)
            open('flag', 'a').write(flag + '\n')
            break

