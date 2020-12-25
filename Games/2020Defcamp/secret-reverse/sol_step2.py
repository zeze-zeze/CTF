def rev_sub_188A():
    target = 'fwwgftujhxrwabizmabhikhptjbqeezfwyucbl'
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    capetown = 'capetown'
    table2 = []
    for i in range(len(target)):
        res = ord(capetown[i % len(capetown)]) - ord(target[i])
        if res < 0:
            res += 26
        table2.append(alphabet[res])
    print(''.join(table2))
#rev_sub_188A()
       

def rev_sub_214D():
    target = 'xetyovcevdyitnooqaoxlepyjroopkxigcvcsd'.upper()
    table = 'ABCDEvodkaFGHIJbcefgKLMNOhijlmPQRSTnpqrsUVWXYtuwxyjamesABCDEonsbcFGHIJdfghiKLMNOklpqrPQRSTtuvwxUVWXY'
    def sub_2003(c):
        v2 = 0
        while v2 <= 4:
            for i in range(5, 10):
                if c == ord(table[10 * v2 + i]):
                    return v2, i
            v2 += 1
        return -1, -1

    def sub_20A8(c):
        v2 = 5
        while v2 <= 9:
            for i in range(5):
                if c == ord(table[10 * v2 + i]):
                    return v2, i
            v2 += 1
        return -1, -1

    rev = {}
    for i in range(256):
        for j in range(256):
            v1_l, v1_h = sub_2003(i)
            v2_l, v2_h = sub_20A8(j)
            if v1_l == -1 or v1_h == -1 or v2_l == -1 or v2_h == -1:
                continue
            rev[table[10 * v1_l + v2_h] + table[10 * v2_l + v1_h]] = '{}{}'.format(chr(i), chr(j))
    
    byte_2071C0 = []
    for i in range(0, len(target), 2):
        byte_2071C0.append(rev[target[i] + target[i+1]])
    print(''.join(byte_2071C0).replace('x', '_'))

rev_sub_214D()
print('46004746409548141804243297904243125193404843946697460795444349' == '46004746409548141804243297904243125193404843946697460795444349') 
