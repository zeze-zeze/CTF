f = [101, 102, 125, 108, 127, 87, 76]
g = [ord(i) for i in 'easyctf']

n = 0
while True:
    m = n ^ 0x58EB29
    correct = True
    i = 0
    for a, b in zip(f, g):
        if (m * i ^ a) % 256 != b:
            correct = False
            break
        i += 1

    if correct:
        print('correct', n)
        break

    n += 1

    if n % 1000000 == 0:
        print(n)
