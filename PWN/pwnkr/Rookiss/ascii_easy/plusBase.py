#coding=utf-8

gadgets = open('./gadgets.txt').read().split('\n')[2:-2]
condition_gadgets = ''

for gadget in gadgets:
    try:
        plus = hex(int(gadget[2:10], 16) + 0x5555e000)
        for p in plus[2:].decode('hex'):
            if ord(p) < 0x20 or ord(p) > 0x7f:
                raise ValueError
        condition_gadgets += plus + gadget[10:] + '\n'
    except:
        continue

open('condition_gadgets', 'w').write(condition_gadgets)
