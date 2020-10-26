payload = ''

# read in the decoder
with open('decoder') as decoder:
    data = decoder.read()
    for i in data:
        payload += "\\x%02x" % ord(i)
    decoder.close()

# read in the shellcode & encode it
with open('shellcode') as sc:
    data = sc.read()
    # for each byte, we add 1 to it and emit it.
    for i in data:
        payload += "\\x%02x" % (ord(i) + 1)
    sc.close()

# spit out payload!
print payload
