from z3 import *

s = Solver()
A = IntVector('A', 27)

for i in range(27):
    s.add(A[i] > 0)
    s.add(A[i] < 127)

s.add(A[0] == 70)
s.add(A[1] == 35)
s.add(A[2] == 123)
s.add(A[25] == 125)

s.add(A[0] + A[15] + A[15] + A[11] + A[4] == 453)
s.add(A[1] + A[4] + A[0] + A[17] == 272)
s.add(A[2] + A[0] + A[19] == 309)
s.add(A[3] + A[14] + A[6] == 218)
s.add(A[4] + A[6] + A[6] == 138)
s.add(A[5] + A[8] + A[18] + A[7] == 377)
s.add(A[6] + A[14] + A[0] + A[19] == 283)
s.add(A[7] + A[0] + A[19] == 283)
s.add(A[8] + A[6] + A[11] + A[14] + A[14] == 366)
s.add(A[9] + A[0] + A[2] + A[10] + A[4] + A[19] == 454)
s.add(A[10] + A[8] + A[19] + A[4] == 323)
s.add(A[11] + A[8] + A[14] + A[13] == 320)
s.add(A[12] + A[14] + A[13] + A[10] + A[4] + A[24] == 343)
s.add(A[13] + A[14] + A[18] + A[4] == 200)
s.add(A[14] + A[18] + A[19] + A[17] + A[8] + A[2] + A[7] == 670)
s.add(A[15] + A[8] + A[6] == 275)
s.add(A[16] + A[20] + A[4] + A[4] + A[13] == 296)
s.add(A[17] + A[0] + A[1] + A[1] + A[8] + A[19] == 489)
s.add(A[18] + A[20] + A[13] == 204)
s.add(A[19] + A[20] + A[17] + A[19] + A[11] + A[4] == 606)
s.add(A[20] + A[12] + A[1] + A[17] + A[4] + A[11] + A[11] + A[0] == 696)
s.add(A[21] + A[0] + A[13] == 166)
s.add(A[22] + A[0] + A[6] + A[14] + A[13] == 340)
s.add(A[23] + A[17] + A[0] + A[24] == 273)
s.add(A[24] + A[14] + A[24] + A[14] == 170)
s.add(A[25] + A[4] + A[1] + A[17] + A[0] == 397)

if s.check() == sat:
    mod = s.model()
flag = ''
for i in range(26):
    flag += chr(int(str(mod[A[i]])))
print flag
