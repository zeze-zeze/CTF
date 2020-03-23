from pwn import *
import string

flag = ''
count = 1
now = 0

def start():
    global flag
    global count
    global now
    r = remote('142.93.113.55', 31087)
    r.sendlineafter('start:', 'start')

    for i in range(100):
        test = flag + string.printable[count]
        print 'test: {}'.format(test)
        r.sendlineafter('Input:', test)
        res = r.recvline()
        print res
        if res.count('\x00') > now:
            flag += string.printable[count]
            print flag
            count = -1
            now += 1
        count = (count + 1) % len(string.printable)

while len(flag) != 26:
    try:
        start()
    except:
        pass
