#coding=utf-8
import qrtools
import qrcode

proof = 'MLeHZz3qrQktuT+hWrMdzoyE/Vn8/QkeB4n00T1ZafYKMCAwqwkCRXVfC0Tujs+l5uELgKsULoh4JNO7uMumI01EHCkwCjDq2jhCroy59Hzu8azMjbn6m7ZyqYRwiDPBVrxHeejsBfmm0EqpiTj/RAexkrRFKXph2FAal5HH6/6VsJ7S520eMSAwHpb4MRRQgrpNjT6ORbVgbEL4XJiTekFUqfaIYL6Z+AIwCjCMOR4YqBoyNZndTMs90VjbVnPdftRGhL0sRkn/KUuJCjAgMI+Rc3KanX8wgMGNKGAEIw0IgY42rgschmTwx+2mCignMAowUpaW6WmJiYawnfSRUNr02bOq+vTFTQ7FWFtL1xI0ICMwCjC4L4tM9/ry41v/f51cIYIWLQVQheWDp2qjeaPGMkV/CjEK'

address = 'e1bf7aa7e80687c9e80dfe20d79934c547d1c3fc34a503f06eb48198b121b55a'

data = 'username={}&amount={}&proof={}&hash={}'.format('zeze', 1000001, proof, address)
print data

qr =qrcode.QRCode(version=1, error_correction=qrcode.constants.ERROR_CORRECT_L, box_size=10, border=4,)
qr.add_data(data)
qr.make(fit=True)
img = qr.make_image(fill_color="black", back_color="white") 
img.save('admin.png')

'''
qr = qrtools.QR()
qr.decode('out.png')
#print(qr.data)
'''
