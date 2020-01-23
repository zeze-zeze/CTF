import requests
import urllib
from requests.packages.urllib3.exceptions import InsecureRequestWarning

requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
BLOCK = 16
PHPSESSID = '9o90fklqlghi3oan1s0i21n04'
CIPHER = 'YH3T7T3fqbRXJeflryS7%2BBVTVT8c2WHas0y7SjVu71B0PzDjoUowO8rhUEsrI6oJdOZQzsGsASIaAzUK9kNg59KbZXAD6OJOhDyuzhA5hKQwTvPUp10XfgOZCaw8l8FS' 

def send(blocks):
    blocks = ''.join(blocks[::-1][:-5])
    cipher = urllib.quote_plus(blocks.encode('base64').strip())
    cookies = {'FLAG': cipher, 'PHPSESSID': PHPSESSID}
    res = requests.get(url = 'https://edu-ctf.csie.org:10190/party.php', cookies = cookies, verify = False)

    if 'Your flag seems strange @@... okay....' in res.content and 'CAT PARTY' in res.content:
        print 'correct'
        return True
    else: 
        if 'CAT PARTY' in res.content:
            print 'party'
        return False


flag = ''
cipher = urllib.unquote(CIPHER).decode('base64')
blocks = [cipher[i : i + BLOCK] for i in range(0, len(cipher), BLOCK)][::-1]

blocks_dup = [cipher[i : i + BLOCK] for i in range(0, len(cipher), BLOCK)][::-1]

for b in blocks_dup:
    print b.encode('hex')

now_try = 6
plain = ''
decrypt = ''
for b in range(1, BLOCK + 1):
    if len(plain) < b-1:
        print 'wrong'
        exit(0)
    for guess in range(256):
        control = ''
        for d in decrypt:
            control += chr(ord(d) ^ b)

        blocks[now_try] = blocks[now_try][:-b] + chr(guess) + control

        if send(blocks):
            decrypt = chr(guess ^ b) + decrypt
            plain = chr(guess ^ b ^ ord(blocks_dup[now_try][-b])) + plain
            print 'plain: {}, decrypt: {}'.format(plain.encode('hex'), decrypt.encode('hex'))
            break
print plain.encode('hex')

'''
FLAG plain
464c41477b4545304446313741343130
43393046383645383834373133343642
36444137374538433837383230304233
37453630433533453941353639313332
31313436357d0a0a0a0a0a0a0a0a0a0a
'''
