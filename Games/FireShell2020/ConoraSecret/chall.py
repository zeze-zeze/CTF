import gmpy2, os
import SECRET

class Cipher():
    state = None
    nbits = None
    p = None
    g = None

    def __init__(self, nbits = 160):
        self.nbits = nbits
        seed = reduce(lambda a, b: (a << 8) | ord(b), os.urandom(128), 0)
        self.state = gmpy2.random_state(seed)
        self.p = self.generaterandomvalue()
        self.g = self.generaterandomvalue()

    def generaterandomvalue(self):
        randomvalue = gmpy2.mpz_urandomb(self.state, self.nbits)
        return gmpy2.next_prime(randomvalue)

    def genkey(self):
        while True:
            v = self.generaterandomvalue()
            if v < self.p:
                break
        return v


c = Cipher()
alicekey = c.genkey()
bobkey = c.genkey()

A = gmpy2.powmod(c.g, alicekey, c.p)
B = gmpy2.powmod(c.g, bobkey, c.p)

alicemessage = SECRET.alicemessage
aliceciphered = (pow(A, bobkey, c.p) * alicemessage) % c.p

bobmessage = SECRET.bobmessage
bobciphered = (pow(A, bobkey, c.p) * bobmessage) % c.p

print 'g:', c.g
print 'p:', c.p

print (A, aliceciphered)
print (B, bobciphered)
