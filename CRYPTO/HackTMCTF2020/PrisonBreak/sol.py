givens = open('Given_File.txt').read().strip().split('\n')
mod = 999999937
all_segments = [[0 for i in range(10)] for j in range(1000)]


for given in givens:
    given = given.split(' ')
    a, b, c = int(given[0]), int(given[1]), int(given[2])
    all_segments[a][b / 1000000] += c

zeros = [0 for i in range(10000000)]

for i in range(1000):
    for j in range(10):
        for k in range(i, j * 1000000 + i):
            zeros[k] += all_segments[i][j]
            zeros[k] %= mod

'''
# [1000, 1000000], [1001000, 2000000], ......, [8001000, 9000000]
ten_segments = [0 for i in range(11)]
for i in range(1, 10):
    for j in range(1000):
        for k in range(i, 10):
            ten_segments[i] += all_segments[j][k]

for i in range(1, 10000000):
    if i < 1000:
        for j in range(0, i):
            for k in range(1, 10):
                zeros[i] += all_segments[j][k]
        zeros[i] += all_segments[i][0]

    elif i >= 9001000:
        zeros[i] = 0

    elif i >= 1000 and i % 1000000 >= 1000:
        zeros[i] += ten_segments[i / 1000000 + 1]

    else:    
        # [1000000, 1001000), [2000000, 2001000), ......, [9000000 ~ 9001000)
        zeros[i] += ten_segments[i / 1000000 + 1]
        for j in range(0, i % 1000000):
            zeros[i] += all_segments[j][i / 1000000]

    zeros[i] %= mod
'''
password = 1
for z in zeros:
    if z:
        password *= z
        password %= mod

print password

