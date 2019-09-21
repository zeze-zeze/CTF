#coding=utf-8
import random

def op1(p, s):
    return sum([i * j for i, j in zip(s, p)]) % 256

def op2(m, k):
    return bytes([i ^ j for i, j in zip(m, k)])

def op3(m, p):
    return bytes([m[p[i]] for i in range(len(m))])

def op4(m, s):
    return bytes([s[x] for x in m])

def stage0_rev(c):
    random.seed('oalieno')
    p = [int(random.random() * 256) for i in range(16)]
    s = [int(random.random() * 256) for i in range(16)]
    m = b''
    for x in c:
        k = op1(p, s)
        m += bytes([x ^ k])
        s = s[1:] + [k]
    return m

def stage1_rev(c):
    random.seed('oalieno')
    k = [int(random.random() * 256) for i in range(16)]
    p = [i for i in range(16)]
    random.shuffle(p)
    pp = {}
    for i in range(len(p)):
        pp[p[i]] = i
    s = [i for i in range(256)]
    random.shuffle(s)
    ss = {}
    for i in range(len(s)):
        ss[s[i]] = i
    m = c

    for i in range(16):
        m = op4(m, ss)
        m = op3(m, pp)
        m = op2(m, k)
    return m
	    	

stage_rev = [stage0_rev, stage1_rev]
for i in range(256):
    cipher = open('cipher', 'rb').read()
    key = bin(i)[2:].rjust(8, '0')[::-1]
    for k in key:
        cipher = stage_rev[int(k)](cipher)
    print(cipher)
