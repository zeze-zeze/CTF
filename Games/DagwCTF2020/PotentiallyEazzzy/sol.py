from z3 import *
from pwn import *

AB = [chr(i) for i in range(ord("*"), ord("z")+1)]

sol = Solver()

a = lambda c: ord(AB[0]) + (c % len(AB))
#o = lambda c: ord(c)
#oa = lambda c: a(o(c))
def m(one, two, three, four):
    global sol
    d = len(AB)//2
    s = ord(AB[0])
    s1, s2, s3 = one - s, two - s, three - s
    ss = s1 + s2 + s3
    sol.add(Or(ss == four, ss - d == four, ss - 2*d == four, ss - 3*d == four, ss - 4*d == four, ss - 5*d == four, ss - 6*d == four))

def indexes(s, needle):
    a = 0
    for idx, c in enumerate(s):
        if c == needle:
            a += idx
    return a

email = [ord('.')] + [ord('@')] + [ord('*')] * 30
e = [BitVec('e{}'.format(i), 8) for i in range(32)]
k = [BitVec('k{}'.format(i), 8) for i in range(32)]

for i in range(32):
    sol.add(k[i] >= ord('*'))
    sol.add(k[i] <= ord('z'))

for i in range(2, 32):
    sol.add(e[i] == ord('*'))

sol.add(e[0] == ord('.'))
sol.add(e[1] == ord('@'))

sol.add(k[0] == ord('Z'))
sol.add(k[3] == a((k[1] % 30) + (k[2] % 30)) + 5)
sol.add(k[5] == ord('*') + (k[3] + 52) - len(AB))
sol.add(k[6] == a((k[7] % 8) * 2))
sol.add(k[7] == a(k[1] + k[2] - k[3]))
sol.add(k[8] == a((k[6] % 16) / 2))
sol.add(k[9] == ord('*') + (k[6] + k[4] + k[8] - 4) - 2 * len(AB))
sol.add(k[10] == a((k[1] % 2) * 8 + (k[2] % 3) + (k[3] % 4)))
m(e[3], k[11], k[12], 8)
m(e[7], k[13], k[4], 18)
m(e[9], k[14], k[3], 23)
m(e[10], k[15], k[10], 3)
m(e[11], k[13], k[16], 792 % 40)
m(e[20], k[23], k[17], 9)
m(e[21], k[24], k[13], 41 % 40)
m(e[22], k[25], k[10], 3)
m(e[26], e[27], k[28], 7)
m(e[28], e[29], k[29], 2)
m(e[30], k[30], e[18], 4)
m(e[31], k[31], e[4], 7)

sol.add(a(email.count(ord('.'))) == k[1])
sol.add(k[2] == a(indexes(email, ord('*')) + 7))
sol.add(k[4] == ord('*') + (50 + k[5]) - len(AB))

m(email[12], k[17], k[4], email.count(ord('d')))
m(email[13], k[18], k[7], email.count(ord('a')))
m(email[14], k[19], k[8], email.count(ord('w')))
m(email[15], k[20], k[1], email.count(ord('g')))
m(email[16], email[17], k[21], email.count(ord('s')))
m(email[18], email[19], k[22], email.count(ord('m')))
m(email[23], k[26], email[14], email.count(ord('1')))
m(email[24], email[25], k[27], email.count(ord('*')))

key = ''
email = ''
if sol.check() == sat:
    res = sol.model()
    #print res
    for i in range(32):
        key += chr(int(str(res[k[i]])))
        email += chr(int(str(res[e[i]])))
print key
print email

#r = remote('127.0.0.1', 30003)
r = remote('ctf.umbccd.io', 5500)
r.sendlineafter('address: ', email)
r.sendlineafter('key: ', key)
print r.recvall(1)
