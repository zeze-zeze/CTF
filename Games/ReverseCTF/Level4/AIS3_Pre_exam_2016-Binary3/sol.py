from z3 import *

dest = [BitVec('dest{}'.format(i), 8) for i in range(30)]
v2 = [None for i in range(30)]
for i in range(30):
    v2[i] = dest[i]

v2[0] = dest[3] ^ (dest[21] | dest[11] | dest[1] ^ (dest[4] + (dest[10] ^ v2[0]))) ^ dest[6]
v2[19] = dest[19] ^ dest[0] ^ (dest[20] | (dest[8] + dest[5] + (dest[9] ^ v2[19]))) ^ dest[14]
v2[16] = dest[3] ^ (dest[22] | (dest[20] + (dest[2] | v2[16]))) | dest[1]
v2[7] = v2[7] + dest[9] + dest[2]
v2[22] = (dest[22] | (dest[4] + (dest[17] | dest[0] | dest[12] | v2[22]))) + dest[7]
v2[19] = (dest[3] | dest[2] | (dest[11] + (dest[19] ^ v2[19]))) ^ dest[12]
v2[22] = v2[22] + dest[13] + dest[1]
v2[14] = dest[5] | (dest[20] + (dest[2] ^ dest[9] ^ (dest[1] + dest[3] + v2[14]))) | dest[16]
v2[8] = (dest[20] | (dest[0] + (dest[13] ^ (dest[3] + v2[8])))) + dest[10]
v2[3] = (dest[3] | v2[3]) ^ dest[6]
v2[22] = (dest[19] | v2[22]) + dest[2]
v2[6] = (dest[16] | dest[0] ^ (dest[12] | dest[8] | (dest[22] + (dest[18] | v2[6])))) ^ dest[21]
v2[13] = dest[10] | dest[13] ^ (dest[21] + dest[1] + v2[13]) | dest[2]
v2[14] = (dest[16] + (dest[5] ^ (dest[2] + (dest[6] ^ v2[14])))) ^ dest[10]
v2[20] = (dest[13] + (dest[10] | dest[22] ^ (dest[12] + (dest[17] ^ dest[2] ^ dest[15] ^ dest[6] ^ v2[20])))) | dest[9]
v2[6] = v2[6] | dest[1] | dest[8]
v2[2] = (dest[15] + dest[21] + dest[22] + (dest[11] | dest[9] | (dest[3] + (dest[7] ^ v2[2])))) | dest[10]
v2[21] = dest[11] ^ dest[18] ^ (dest[3] + (dest[12] ^ dest[9] ^ (dest[13] | dest[4] | v2[21]))) ^ dest[7]
v2[4] = (dest[19] ^ dest[21] ^ (dest[0] + dest[12] + (dest[7] | dest[22] ^ v2[4]))) + dest[16]
v2[19] = dest[7] | (dest[4] + dest[21] + (dest[3] | (dest[22] + v2[19]))) | dest[13]
v2[17] = (dest[2] + (dest[18] | dest[4] ^ (dest[16] + (dest[14] | v2[17])))) ^ dest[21]
v2[0] = (dest[22] | dest[0] | dest[18] ^ (dest[10] | v2[0])) ^ dest[15]
v2[7] = (dest[6] | (dest[2] + (dest[8] | dest[18] ^ v2[7]))) ^ dest[19]
v2[15] = (dest[9] ^ (dest[5] + dest[8] + dest[0] + (dest[10] ^ (dest[20] + (dest[11] ^ v2[15]))))) + dest[17]
v2[11] = dest[17] ^ (dest[20] + dest[0] + (dest[13] | v2[11])) ^ dest[16]
v2[12] = v2[12] ^ (dest[3] ^ dest[9] ^ dest[19] ^ dest[5])
v2[2] = (dest[0] + (dest[2] | v2[2])) ^ dest[17]
v2[14] = (dest[4] | (dest[22] + (dest[2] | dest[20] | dest[15] | dest[3] ^ v2[14]))) ^ dest[18]
v2[17] = (dest[1] + (dest[13] | dest[9] | (dest[6] + (dest[19] | dest[5] | v2[17])))) ^ dest[11]
v2[22] = (dest[0] ^ (dest[11] | v2[22])) + dest[17]
v2[19] = v2[19] | dest[16] | dest[2]
v2[2] = (dest[1] ^ (dest[3] + (dest[21] ^ (dest[22] + v2[2])))) + dest[8]
v2[4] = dest[20] ^ (dest[9] | dest[11] | dest[17] | dest[10] | (dest[6] + v2[4])) | dest[0]
v2[21] = dest[19] ^ (dest[8] | (dest[20] + (dest[15] ^ dest[9] ^ (dest[5] + dest[1] + v2[21])))) ^ dest[21]
v2[10] = (dest[1] | (dest[7] + dest[6] + dest[12] + (dest[14] | dest[21] | v2[10]))) + dest[0]
v2[21] = (dest[21] ^ (dest[2] + (dest[17] | dest[11] | dest[5] | dest[18] ^ v2[21]))) + dest[1]
v2[10] = dest[8] ^ dest[0] ^ dest[15] ^ (dest[18] | v2[10]) | dest[19]
v2[10] = dest[1] | (dest[11] + (dest[20] | (dest[16] + (dest[2] ^ dest[3] ^ (dest[15] + v2[10]))))) | dest[8]
v2[2] = dest[9] + (dest[10] ^ (dest[7] | v2[2])) + dest[3]
v2[22] = (dest[7] ^ (dest[1] + (dest[16] ^ v2[22]))) + dest[10]
v2[2] = (dest[2] | (dest[7] + (dest[12] ^ (dest[10] | v2[2])))) ^ dest[0]
v2[16] = (dest[18] | (dest[0] + (dest[3] ^ (dest[8] | (dest[1] + (dest[6] ^ v2[16])))))) + dest[16]
v2[4] = dest[2] | dest[18] | (dest[4] + (dest[9] ^ v2[4])) | dest[20]
v2[16] = (dest[18] + dest[5] + (dest[16] | dest[3] ^ dest[14] ^ v2[16])) | dest[20]
v2[13] = (dest[18] ^ dest[16] ^ (dest[22] | dest[15] ^ dest[12] ^ v2[13])) + dest[1]
v2[10] = (dest[13] | (dest[20] + dest[9] + (dest[0] | v2[10]))) ^ dest[14]
v2[19] = dest[7] + (dest[10] ^ (dest[8] | dest[20] | dest[6] ^ (dest[1] + v2[19]))) + dest[14]
v2[2] = (dest[7] + v2[2]) | dest[0]
v2[2] = dest[10] ^ (dest[2] + (dest[14] | v2[2])) | dest[19]
v2[12] = (dest[0] | (dest[19] + (dest[18] ^ dest[7] ^ (dest[13] | dest[5] ^ v2[12])))) ^ dest[6]
v2[1] = (dest[4] ^ (dest[0] + v2[1])) + dest[8]
v2[5] = dest[13] ^ (dest[3] | dest[6] ^ (dest[2] | v2[5])) | dest[14]
v2[9] = (dest[11] + (dest[3] ^ dest[17] ^ (dest[6] | v2[9]))) | dest[21]
v2[18] = (dest[2] | dest[22] | v2[18]) + dest[5]

v42 = [None for i in range(6)]
v42[0] = 37 * dest[18] + 21 * dest[16] + 2 * dest[14]
v42[1] = 36 * dest[19] + 19 * dest[22] + 7 * dest[17]
v42[2] = 6 * dest[21] + 5 * dest[22] + 31 * dest[20]
v42[3] = dest[11] + dest[10] + dest[9] + dest[8] + dest[7] + dest[6] + dest[12]
v42[4] = dest[21] + dest[20] + dest[19] + dest[18] + dest[17] + dest[16] + dest[22]
v42[5] = dest[16] + dest[15] + dest[13] + dest[12] + dest[11] + dest[10] + dest[17]

v51 = 0
for i in range(20):
    v51 += v2[i]

s = Solver()
s.add(v51 == 8828)
s.add(v42[0] == 4937)
s.add(v42[1] == 6714)
s.add(v42[2] == 2792)
s.add(v42[3] == 443)
s.add(v42[4] == 585)
s.add(v42[5] == 413)

v52 = [0 for i in range(4)]
for v56 in range(16):
    v41 = dest[v56]
    s.add(v41 <= 0x7e)
    v52[0] += v41
    v52[2] = v41 ^ 10 * v52[2]
    v52[3] = 24 * v52[3] + v41
    v52[1] = ((v52[1] >> 20) + 7 * v41) | (v52[1] << 12)

s.add(v52[0] == 1280)
#s.add(v52[1] & 0xffffffff == 0x8d4800b5)
s.add(v52[2] & 0xffffffff == 0xa779e504)
s.add(v52[3] & 0xffffffff == 0xabcfadba)

if s.check() == sat:
    m = s.model()
    print(m)
