'''
reee = open('reee', 'r').read()

loc_4006E5 = [ord(r) for r in reee[0x6e5:0x6e5+552]]
byte_601060 = [ord(r) for r in reee[0x105f:0x115f+1]]
byte_601161 = 0
byte_601162 = 0

for i in range(31336+1-30000):
    for j in range(551+1-500):
        byte_601161 = (byte_601161 + 1) % 256
        byte_601162 = (byte_601162 + byte_601060[byte_601161]) % 256
        byte_601060[byte_601161] ^= byte_601060[byte_601162]
        byte_601060[byte_601162] ^= byte_601060[byte_601161]
        byte_601060[byte_601161] ^= byte_601060[byte_601162]
        loc_4006E5[j] = (byte_601060[(byte_601060[byte_601161] + byte_601060[byte_601162]) % 256]) % 256

print loc_4006E5
'''

loc = open('loc_4006e5.txt').read()
loc = ''.join(['\\x{}'.format(hex(ord(l))[2:].rjust(2, '0')) for l in loc])
print loc
