#coding=utf-8
import qrtools
import qrcode

data = open('out.data').read()
qr =qrcode.QRCode(version=1, error_correction=qrcode.constants.ERROR_CORRECT_L, box_size=10, border=4,)
qr.add_data(data)
qr.make(fit=True)
img = qr.make_image(fill_color="black", back_color="white") 
print type(img)
img.save('admin.png')

qr = qrtools.QR()
qr.decode('out.png')
#print(qr.data)
