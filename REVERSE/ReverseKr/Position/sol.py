from z3 import *

serial = [ord(i) for i in '76876-77776']
v = [BitVec('v{}'.format(i), 32) for i in range(4)]
s = Solver()
s.add(v[3] == ord('p'))
for i in range(4):
    s.add(v[i] >= ord('a'))
    s.add(v[i] <= ord('z'))

v6 = v[0]
v7 = (v6 & 1) + 5
v48 = ((v6 >> 4) & 1) + 5
v42 = ((v6 >> 1) & 1) + 5
v44 = ((v6 >> 2) & 1) + 5
v46 = ((v6 >> 3) & 1) + 5

v8 = v[1]
v34 = (v8 & 1) + 1
v40 = ((v8 >> 4) & 1) + 1
v36 = ((v8 >> 1) & 1) + 1
v9 = ((v8 >> 2) & 1) + 1
v38 = ((v8 >> 3) & 1) + 1

s.add(serial[0] == 0x30 + v7 + v9)
s.add(serial[1] == 0x30 + v46 + v38)
s.add(serial[2] == 0x30 + v42 + v40)
s.add(serial[3] == 0x30 + v44 + v34)
s.add(serial[4] == 0x30 + v48 + v36)

v20 = v[2]
v21 = (v20 & 1) + 5
v49 = ((v20 >> 4) & 1) + 5
v43 = ((v20 >> 1) & 1) + 5
v45 = ((v20 >> 2) & 1) + 5
v47 = ((v20 >> 3) & 1) + 5

v22 = v[3]
v35 = (v22 & 1) + 1
v41 = ((v22 >> 4) & 1) + 1
v37 = ((v22 >> 1) & 1) + 1
v23 = ((v22 >> 2) & 1) + 1
v39 = ((v22 >> 3) & 1) + 1

s.add(serial[6] == 0x30 + v21 + v23)
s.add(serial[7] == 0x30 + v47 + v39)
s.add(serial[8] == 0x30 + v43 + v41)
s.add(serial[9] == 0x30 + v45 + v35)
s.add(serial[10] == 0x30 + v49 + v37)

if s.check() == sat:
    flag = ''
    for i in range(4):
        flag += chr(int(str(s.model()[v[i]])))

print(flag)
