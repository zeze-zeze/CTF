#python2
# coding-utf-8
import sys

bits = ""
for seq in range(16):
    with open(sys.argv[1], "rb") as f:
        data = f.read()
        data = data[seq:]

        for c in data:
            lsb = str(ord(c) & 0x1)
            bits += lsb

        bytess = [chr(int(bits[i:i+8], 2)) for i in range(0, len(bits), 8)]
        lsbstr = "".join(bytess)

        bits=""

        flag=''
        if "CTF" in lsbstr or "ctf" in lsbstr:
            for i in lsbstr:
              if ord(i)>=32 and ord(i)<=126:
                flag+=i
            print(flag)
            break