with open('given.txt', 'r') as f:
    lines = f.read().strip().split('\n')

points = []
for line in lines:
    spl = line.split(' ')
    a = int(spl[0])
    b = int(spl[1])
    c = int(spl[2])
    points.append((a, c))
    points.append((b, -c))
points.sort()

n = 999999937
product = 1
s = 0
pos = 0
for i in range(1, 10000001):
    while pos < len(points) and i >= points[pos][0]:
        s += points[pos][1]
        pos += 1
    s %= 10
    if s > 0:
        product *= s
        product %= n
print(product)
