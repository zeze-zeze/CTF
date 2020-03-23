import math

def solve(g, h, p):
	N = int(math.ceil(math.sqrt(p - 1))) 
	print 'N={}'.format(N)
	t = {}
	
    # Baby step.
	for i in range(N):
	    t[pow(g, i, p)]=i
	print 'Baby step {}'.format(t)
	
    # Fermat's Little Theorem
	c = pow(g, N * (p - 2), p)

	for j in range(N):
	    y = (h * pow(c, j, p)) % p
	    if y in t: 
	        return j * N + t[y]
	return None

g = 271288297309032254959087925221099038857108692921
p = 1102599800392365312390928345103450099096472467311
A = 434975788934893935486812987784904932345816911149
B = 170780066307111969073123095839072967904862735531
print solve(g, A, p)
