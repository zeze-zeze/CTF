#coding=utf-8
from pwn import *
import string

possible = string.printable[:36] + '_?!'
flag = 'flag{y0u_kn0w_h'
pattern = re.compile('^flag{.*}$')

while not pattern.match(flag):
    try:
        r = remote('crypto.chal.csaw.io', 1003)
        answer = r.recvuntil('Tell me something:')
        print 'answer: {}'.format(answer)

        r.sendline('a' * (len(flag) + 1))
        target = r.recvuntil('Tell me something:').split('\n')[1]
        r.sendline('a' * (len(flag)))
        test = r.recvuntil('Tell me something:').split('\n')[1]
        
        #print r.recvall(1)
        print 'target: {}\n  test: {}'.format(target, test)
        if target[:32] != test[:32]:
            print 'found!!'
            for pos in possible:
                for pos2 in possible:
                    r.sendline(flag + pos2 + pos)
                    res = r.recvuntil('Tell me something:').split('\n')[1]
                    print 'res: {}\n'.format(res)
                    if res[:32] == answer[:32]:
                        flag += pos
                        print '\n\n------------------- {} ------------------\n\n'.format(flag)
                        open('flag', 'w').write(flag2)
                        break
        else:
            continue
    except:
        continue


