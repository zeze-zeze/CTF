from pwn import *
import numpy as np

r = remote('140.110.112.77', 9003)
count = 0
while 1:
    print('\ncount: {}'.format(count))
    count += 1
    formula = []
    formula.append(r.recvline().strip())
    formula.append(r.recvline().strip())
    print(formula)
    coefficient_x = []
    coefficient_y = []
    equal = []
    for f in formula:
        f2, f3 = f.split('=')[0].split('+'), f.split('=')[1]
        coefficient_x.append(int(f2[0].split('*')[0].strip()))
        coefficient_y.append(int(f2[1].split('*')[0].strip()))
        equal.append(int(f3.strip()))
    print(coefficient_x, coefficient_y, equal)

    try:
        A = np.mat('{}, {}; {}, {}'.format(coefficient_x[0], coefficient_y[0], coefficient_x[1], coefficient_y[1]))
        b = np.mat('{}, {}'.format(equal[0], equal[1])).T
        answer = np.linalg.solve(A, b)
        answer_x, answer_y = int(answer[0]), int(answer[1])
    except:
        for i in range(-100, 100):
            if (equal[0] - (coefficient_x[0] * i)) % coefficient_y[0] == 0:
                answer_x = i
                answer_y = (equal[0] - coefficient_x[0] * i) / coefficient_y[0]
                break
        
    print(answer)
        
        
    modify = [-1, 0, 1]
    for i in modify:
        for j in modify:
            if coefficient_x[0] * (answer_x + i) + coefficient_y[0] * (answer_y + j) == equal[0]:
                answer_x += i
                answer_y += j
                break
    print('answer: ', answer_x, answer_y)
    r.recvuntil('x =')
    r.sendline(str(answer_x))
    r.recvuntil('y =')
    r.sendline(str(answer_y))

print(r.recvall(1))
