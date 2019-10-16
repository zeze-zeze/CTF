from secret import AES_ECB_Cipher
from secret import secret_key, flag

Encrypter = AES_ECB_Cipher(secret_key)

while True:
    
    choice = int(input('Choose a service\n(1) Encrypt \n(2) Decrypt\n(3) Show Source\nSelect: '))
    
    if choice == 1:
        username = str(input('Register a name: '))
        if username == 'admin':
            print('No!!!! You can not be admin!!!!')
            print('-' * 60)
            continue
        plaintxt = 'username={}&role=user'.format(username)
        print()
        print('Auth token: {}'.format(plaintxt))
        token = Encrypter.encrypt(plaintxt)
        print('AES-ECB encrypted token (block_size=16): {}'.format(token))

    elif choice == 2:
        en_token = input('Give me your encrypted token: ')
        try:
            token = Encrypter.decrypt(en_token)
            role = token[token.rfind('&')+1:].split('=')[1]
            print()
            print('Auth token: {}'.format(token))
            if role == 'admin' :
                print('Hey admin! Here is your flag: {}'.format(flag))
                break
            else:
                print('Access denied because role is not admin!')
        except:
            print('Decryption failed.')

    elif choice == 3:
        print('-' * 60)
        print(open('ECB.py').read())

    else:
        break

    print('-' * 60)
