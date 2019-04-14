from myPrimes import p, q
from mySecureNum import a_11, a_12, a_21, a_22
from sympy import symbols, Eq, solve
from Crypto.Util.number import *
import math
import gmpy

assert (a_11*a_22 != a_12*a_21)

FLAG = "HZVII{su8m1T_m3}"

def CRG(m, N, a):
	result = 0

	for i in range(len(m)):
		t = a[i]
		f = m[i]
		z = N // f

		result += t * z * gmpy.invert(z, f)

	return result % N

def encrypt(r,m1,m2):
	cipher = c1*m1 + c2*m2 % r

	open("flag", "w").write(str(cipher))
	return cipher

def decrypt(cipher,p,q,a_11,a_12,a_21,a_22):
	residue1 = cipher%p
	residue2 = cipher%q

	plain1, plain2 = symbols('plain1 plain2')
	eq1 = Eq(a_11*plain1 + a_12*plain2 - residue1)
	eq2 = Eq(a_21*plain1 + a_22*plain2 - residue2)
	sol = solve((eq1,eq2), (plain1, plain2))

	plain1 = int(sol[plain1])
	plain2 = int(sol[plain2])

	return plain1, plain2

def genKeyz(p,q,a_12,a_21,a_11,a_22):

	r = p*q

	c1 = CRG([p,q],r,[a_11,a_21])
	c2 = CRG([p,q],r,[a_12,a_22])

	m1, m2 = symbols('m1 m2')
	eq1 = Eq(a_11*m1 + a_12*m2 - p)
	eq2 = Eq(a_21*m1 + a_22*m2 - q)
	sol = solve((eq1,eq2), (m1, m2))

	max1 = int(sol[m1])
	max2 = int(sol[m2])

	open("pub.pub", "w").write("Public Key:\n  r = {0},\n c1 = {1},\n c2 = {2},\n M1 = {3},\n M2 = {4} ".format(r,c1,c2,max1,max2))
	return r,c1,c2,max1,max2


r,c1,c2,max1,max2 = genKeyz(p,q,a_12,a_21,a_11,a_22)

flag_0 = FLAG[0:32]
flag_1 = FLAG[32:]

m1 = bytes_to_long(flag_0.encode())
m2 = bytes_to_long(flag_1.encode())

assert ( m1 < max1 and m2 < max2)

cipher = encrypt(r,m1,m2)