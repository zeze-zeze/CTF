#coding=utf-8
import time

def switch_Bits(c, p1, p2):
    mask1 = 1 << p1
    mask2 = 1 << p2
    bit1 = c & mask1
    bit2 = c & mask2
    rest = c & ~(mask1 | mask2)
    shift = p2 - p1
    result = ((bit1 << shift) | (bit2 >> shift) | rest) & 0xff
    return result

expected = [0xF4, 0xC0, 0x97, 0xF0, 0x77, 0x97, 0xC0, 0xE4, 0xF0, 0x77, 0xA4, 0xD0, 0xC5, 0x77, 0xF4, 0x86, 0xD0, 0xA5, 0x45, 0x96, 0x27, 0xB5, 0x77, 0xD0, 0xD0, 0xE1, 0xD2, 0xB4, 0x94, 0xB4, 0xE1, 0xF1]

flag = ''
for e in expected:
    for i in range(256):
        c = i
        c = switch_Bits(c, 1, 2)
        c = switch_Bits(c, 0, 3)
        c = switch_Bits(c, 5, 6)
        c = switch_Bits(c, 4, 7)
        c = switch_Bits(c, 0, 1)
        c = switch_Bits(c, 3, 4)
        c = switch_Bits(c, 2, 5)
        c = switch_Bits(c, 6, 7)
        if c == e:
            flag += chr(i)
            print flag
            #time.sleep(1)
            break

