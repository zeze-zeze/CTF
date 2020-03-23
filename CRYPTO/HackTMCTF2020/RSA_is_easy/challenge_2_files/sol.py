import string

ciphers = open('c').read().split('\n')[4][1:-1].split(', ')
'''
abcdefghijklmnopqrstuvwxyz
guiscxlbfprkwdjvqnhmytazoe
'''
words = 'abcd fghijklmnopqrstuvwxyz{}!?e'
words = 'when iascolgtry123dvbpm4uxfqk\'z'
# j
charset = {}
for cipher in ciphers:
    if cipher not in charset:
        charset[cipher] = [words[len(charset)], 0]
    else:
        charset[cipher][1] += 1

encrypted = ''
for cipher in ciphers:
    encrypted += str(charset[cipher][0])

print encrypted
