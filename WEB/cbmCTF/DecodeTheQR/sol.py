# python3
# coding=utf-8
from pyzbar.pyzbar import decode
from PIL import Image
import requests
import shutil

r=requests.get('http://cbmctf2019.cf:3004/')
url = 'http://cbmctf2019.cf:3004/img/qr.png'
response = requests.get(url, stream=True)
with open('qr.png', 'wb') as out_file:
  shutil.copyfileobj(response.raw, out_file)
del response
data=decode(Image.open('qr.png'))
print data
r=requests.get('http://cbmctf2019.cf:3004/check?string='+str(data[0]).split(',')[0].split("'")[1])
print(r.text)
