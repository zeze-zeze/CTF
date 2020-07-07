from Crypto.Hash import SHA256
from Crypto.Cipher.AES import AESCipher

flag = "CDDC20{XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX}" # Find this :)
block_size = ??

def hello():
	sys.stdout.write("Hello~ Please leave a *Base64* message: ")
	text = raw_input()

	return text

def noor2ro(text):
	h = SHA256.new()
	h.update(flag)
	key = h.digest()
	
	try:
		text2 = 'noor2ro' + text.decode('base64') + flag
	except:
		print "Please enter the correct Base64 input."
		exit()

	padding = block_size - (len(text2) % block_size)
	text2 += 'A' * padding
	cipher = AESCipher(key).encrypt(text2).encode('base64')

	return cipher

if __name__ == '__main__':
	text = hello()
	print "Just a moment. . ."
	enc = noor2ro(text)
	print "The message has been encrypted.\n\n", enc