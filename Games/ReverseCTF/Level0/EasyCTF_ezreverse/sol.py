from z3 import *

s = Solver()
x = [BitVec('x{}'.format(i), 8) for i in range(5)]

s.add(x[3] + 4 == 111)
s.add(x[2] + 3 == 125)
s.add(x[0] + 1 == x[4] + 5 - 10)
s.add(x[1] + 2 == 53)
s.add(x[4] + 5 == x[3] + 4 + 3)

if s.check() == sat:
    m = s.model()
    flag = ''
    for i in range(5):
        flag += chr(int(str(m[x[i]])))

    print(flag)

