import struct
from pwn import *
import string


def rol_4(value,count):
	nbits=32
	count%=nbits
	high = value >> (nbits - count)
	value <<= count
	value|=high
	return value&0xffffffff

def ror_4(value,count):
	nbits=32
	count%nbits
	high=value>>count
	value<<=(nbits - count)
	value|=high
	return value&0xffffffff

def rev_ichi(num):
    return num ^ 0xFACEB00C

def rev_ni(num):
    if num < 74628:
        return num - 74628 + 0xffffffff + 1
    else:
        return num - 74628

def rev_san(num):
    return ror_4(num & 0xAAAAAAAA, 2) | rol_4(num & 0x55555555, 4)

def rev_yon(num):
    return rev_ichi(rev_ni(rev_san(num)))

plain = ''
output = open('output.txt').read()
p = process('./test')
rands = p.recvall(1).strip().split('\n')
count = 0

for o in range(0, len(output), 4):
    num = u32(output[o:o+4])
    rand = int(rands[count]) % 4
    if rand == 0:
        rev = rev_ichi(num)
    elif rand == 1:
        rev = rev_ni(num)
    elif rand == 2:
        rev = rev_san(num)
    else:
        rev = rev_yon(num)
   
    try: 
        plain += p32(rev)
    except:
        print '{}: error'.format(count)
        #break
    count += 1

open('plain.png', 'w').write(plain)
