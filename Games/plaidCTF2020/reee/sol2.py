from z3 import *

check = [ord(c) for c in open('checknew').read()]

def brute(tl):
    global check
    global init
    s = Solver()

    BF = [BitVec('BF{}'.format(i), 8) for i in range(tl)]
    BFd = [b for b in BF]
    BFdd = [b for b in BF]
    
    s.add(BF[0] == ord('p'))
    s.add(BF[1] == ord('c'))
    s.add(BF[2] == ord('t'))
    s.add(BF[3] == ord('f'))
    s.add(BF[4] == ord('{'))
    s.add(BF[-1] == ord('}'))

    init = ord('P')
    for i in range(0x539):
        BF[0] = BF[0] ^ init
        for j in range(1, len(BF)):
            BF[j] = BFd[j-1] ^ BF[j]
            BFd[j-1] = BF[j-1]
        init = BFd[-1]
        BFd[-1] = BF[-1]
   
    #print BF

    for b, c in zip(BF, check):
        s.add(b == c)

    if s.check() == sat:
        res = s.model()
        flag = ''
        for i in range(tl):
            flag += chr(int(str(res[BFdd[i]])))
        print flag

#brute(10)
for i in range(10, 100):
    brute(i)
    print i
