from z3 import *

s = Solver()
F = IntVector('F', 26)

for i in range(26):
    s.add(F[i] < 128)
    s.add(F[i] > 0)

s.add(F[0]+F[1]+F[2]+F[3]+F[4]+F[5]+F[6]+F[7]+F[8]+F[9]+F[10]+F[11]+F[12]+F[13]+F[14]+F[15]+F[16]+F[17]+F[18]+F[19]+F[20]+F[21]+F[22]+F[23]+F[24]+F[25] == 2434)

s.add(F[10] + 38 == ord('A') + 21)
s.add(F[12] - ord('A') + 8 == F[3] - 66)
s.add(F[8] + 7 == F[9])

s.add(F[24] + F[23] + F[22] == 283)
s.add(F[15] - 55 == F[7])
s.add(F[0] + 38 == F[8])

s.add(F[0] == ord('F'))
s.add(F[1] == ord('#'))
s.add(F[2] == ord('{'))
s.add(F[25] == ord('}'))

s.add(F[4] - 9 == F[21])
s.add(F[6] == F[11])
s.add(F[17] == F[21])
s.add(ord('A') + 47 == F[3])
s.add(ord('A') + 13 + 26 == F[4])
s.add(((ord('A')+3) * 2) - 29 == F[15])
s.add(F[15] + F[14] + F[16] == 336)
s.add(F[18] - F[20] == -12)
s.add(F[22] == F[20])
s.add(F[22] - F[24] == -4)
s.add(ord('A')+25 - F[24] == -28)
s.add(F[14] == ord('r'))
s.add(F[5] == F[3])
s.add(F[10] == F[13])
s.add(F[13] == F[19])


if s.check() == sat:
    res = s.model()
    flag = ''
    for i in range(26):
        flag += chr(int(str(res[F[i]])))
    print flag
