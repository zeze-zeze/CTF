#coding=utf-8
import requests
import qrtools
from requests_toolbelt import MultipartEncoder

def createAccount(id):
    account = 'zeze{}'.format(id)
    json = {'user' : account, 'pass' : account}
    res = requests.post('http://153.120.18.131/api/signup',
		        json = json
    )
    cookie = str(res.cookies).split('session=')[1].split(' for')[0]
    return cookie

def createQR(cookie):
    json = {'amount':'10'}
    cookies = {'session' : cookie}
    res = requests.post('http://153.120.18.131/api/createQR', 
                  json = json,
                  cookies = cookies
    )
    b = res.text.split('base64, ')[1].split('\\\" alt')[0].decode('base64')
    open('out.png', 'w').write(b)

def decodeQR():
    qr = qrtools.QR()
    qr.decode('out.png')
    print qr.data

def readQR(cookie):
    files = {'attachment_file' : ('out.png', open('out.png', 'r'), 'image/png', {})}
    cookies = {'session' : cookie}
    res = requests.post('http://153.120.18.131/api/readQR', 
                        files = files,
                        cookies = cookies
    )
    print res.text

zeze_cookie = 'eyJ1c2VybmFtZSI6InplemUifQ.XatdxA.L78ARpZDdl3yt-iHFaiho-Mn6vk'
now = 295
#cookie = createAccount(now)
#createQR(zeze_cookie)
#decodeQR()
readQR(zeze_cookie)
