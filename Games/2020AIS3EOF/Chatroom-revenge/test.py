def testgood(w1):
    good = []
    for i in range(0x100):
        try:
            test = (w1 + chr(i).encode('latin1')).decode('utf-8')
            good.append(i)
        except:
            pass
            #print('except: ', i)
    return good

for i in range(256):
    print(hex(i), testgood(chr(i).encode('latin1')))

#for i in range(256):
#    print(hex(i), testgood(chr(i).encode('latin1'), b''))

#for i in range(256):
#    print(hex(i), testgood(chr(i).encode('latin1'), b''))
#    print('\n')

