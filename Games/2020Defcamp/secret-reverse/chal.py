table = 'ABCDEvodkaFGHIJbcefgKLMNOhijlmPQRSTnpqrsUVWXYtuwxyjamesABCDEonsbcFGHIJdfghiKLMNOklpqrPQRSTtuvwxUVWXY'
encoded = '46004746409548141804243297904243125193404843946697460795444349'

def sub_383C(msg):
    for i in range(len(msg)):
        if msg[i] == '_':
            msg[i] = 'x'
    return msg

byte_2071C0 = [0 for i in range(len(msg))]
def sub_1E77(msg):
    global byte_2071C0
    v9 = 0
    v10 = 0
    for i in range(len(msg)):
        if (msg[i] <= 47 and msg[i] > 57) or (msg[i] <= 96 and msg[i] > 122):
            v5 = 0 
            if (i + v10) & 1 and msg[i] == byte_2071C0[v9 - 1]:
                byte_2071C0[v9] = 120
            else:
                byte_2071C0[v9] = msg[i]
            v9 += 1
        else:
            v10 += 1
    if v9 & 1:
        byte_2071C0[v9+1] = 120
    return v9

table2 = []
def sub_214D(a1):
    global table2, byte_2071C0
    def sub_2003(c):
        v2 = 0
        while v2 <= 4:
            for i in range(5, 10):
                if c == ord(table[10 * v2 + i]):
                    return v2, i
            v2 += 1

    def sub_20A8(c):
        v2 = 5
        while v2 <= 9:
            for i in range(5):
                if c == ord(table[10 * v2 + i]):
                    return v2, i
            v2 += 1

    byte_2075C0 = [0 for i in range(a1)]
    for i in range(0, a1, 2):
        v1_l, v1_h = sub_2003(byte_2071C0[i])
        v2_l, v2_h = sub_20A8(byte_2071C0[i + 1])
        table2.append(ord(table[10 * v1_l + v2_h]))
        table2.append(ord(table[10 * v2_l + v1_h]))
    
table3 = []
def sub_188A():
    global table3, table2
    capetown = 'capetown'
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    for i in range(len(table2)):
        v19 = 0
        for j in range(26):
            if alphabet[j] == upper(table2[i]):
                v19 = j
                break

        for k in range(v19, v19 + 26):
            if alphabet[k % 26] == upper(capetown[i % len(capetown)]):
                table3.append(alphabet[k - v19])
                break

whiskey = open('v26', 'rb').read()
final = ''
def sub_2C5A():
    global table3, final

    def sub_2EFE(c):
        None

    for i in range(len(table3)):
        v9 = ord(table3[i])
        final += sub_2EFE(v9) 

msg = sub_383C(msg)
v9 = sub_1E77(msg)
sub_214D(v9)
sub_188A()
sub_2C5A()

print('Encoded:', final)
if final == encoded:
    print('correct')
else:
    print('wrong')
