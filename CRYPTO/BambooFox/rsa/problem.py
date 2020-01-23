from Crypto.Util.number import *

flag = open('flag').read()

def p1(e, p, q, n, d):
	f = bytes_to_long(flag[:11])
	c = pow(f, e, n)
	open('file1', 'w').write('e: {}\nn: {}\nc: {}'.format(e, n, c))

def p2():
	p, q = getPrime(512), getPrime(512) 	

e = 11
p, q = getPrime(200), getPrime(200)
n, phi = p * q, (p - 1) * (q - 1)
if GCD(e, phi) == 1:
    d = inverse(e, phi)

p1(e, p, q, n, d)
