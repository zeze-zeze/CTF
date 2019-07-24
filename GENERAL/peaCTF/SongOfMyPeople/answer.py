import mmap
import struct
from zlib import crc32
import re
import sys
try:
    def strtobytes(x): return bytes(x)
    def bytestostr(x): return str(x)
except (NameError, TypeError):
    strtobytes = str
    bytestostr = str

class IDATChunk:
    counter = ""
    length = ""
    data = ""
    checksum = ""
    def __init__(self, counter, length, data, checksum):
        self.counter = counter
        self.length = int(length.encode("hex"), 16)
        self.data = data
        self.checksum = checksum

def verifyChecksum(data, checksum):
    verify = crc32(strtobytes("IDAT"))
    verify = crc32(data, verify)
    verify &= 2**32 - 1
    verify = struct.pack('!I', verify)
    if verify != checksum:
        return False
    return True


def print_bar(perc=.0):
    SIZE = 20
    return "[%s%s] %f\r" % ("#" * int(20*perc), " " * (20 - int(20*perc)), perc)


def addNewByte(data, seek = "\n", debug=False, byte_to_insert = "\r"):
    if debug:
        print "DEBUG!!!", type(data), data
    indexes = [m.start() for m in re.finditer(seek, data)]
    for i in indexes:
        if byte_to_insert is None:
            for byte_to_insert in range(255):
                new_data = data[:i]+ chr(byte_to_insert) + data[i:]
                yield str(new_data), i, byte_to_insert, len(indexes)
        else:
            new_data = data[:i]+ byte_to_insert + data[i:]
            yield str(new_data), i, byte_to_insert, len(indexes)



def getCorrectData(idatobj):
    if idatobj.length - len(idatobj.data) == 1 :
        for new_data, i, byte_to_insert, num in addNewByte(idatobj.data):
            if verifyChecksum(new_data, idatobj.checksum):
                print "Offset byte: ", str(i), repr(byte_to_insert)
                return new_data

    elif idatobj.length - len(idatobj.data) == 2 :
        counter = 0
        for data_plus_1, i1, byte_1, num in addNewByte(idatobj.data):
            for data_plus_2, i2, byte_2, num2 in addNewByte(data_plus_1):
                sys.stderr.write(print_bar(float(counter)/255/255/num))
                counter += 1
                if verifyChecksum(data_plus_2, idatobj.checksum):
                    print "Offset byte 1: ", str(i1), " Byte: ", repr(byte_1)
                    print "Offset byte 2: ", str(i2), " Byte: ", repr(byte_2)
                    return data_plus_2
    elif idatobj.length - len(idatobj.data) == 3 :
        counter = 0
        for data_plus_1, i1, byte_1, num in addNewByte(idatobj.data):
            for data_plus_2, i2, byte_2, num in addNewByte(data_plus_1):
                for data_plus_3, i3, byte_3, num in addNewByte(data_plus_2):
                    sys.stderr.write(print_bar(float(counter)/255/255/255))
                    counter += 1
                    if verifyChecksum(data_plus_3, idatobj.checksum):
                        print "Offset byte 1: ", str(i1), " Byte: ", repr(byte_1)
                        print "Offset byte 2: ", str(i2), " Byte: ", repr(byte_2)
                        print "Offset byte 3: ", str(i3), " Byte: ", repr(byte_3)
                        return data_plus_3
def getlen(mm, idatindex):
    return int("0x" + mm[idatindex-4:idatindex].encode("hex"), 0)

idat_chunks = []

f = open('test.png', "r+b")
mm = mmap.mmap(f.fileno(), 0)
#
# L | IDAT | DATA | CHECKSUM ---> {L} {DATA, CHECKSUM, L} {DATA, CHECKSUM, L} ... {DATA, CHECKSUM}
#
shitgotreal = mm.read(mm.size()).split("Adobe Fireworks CS6")[1][4:].split("IEND")[0].split("IDAT")

for cont, idat in [ (x,shitgotreal[x])  for x in range(1, len(shitgotreal))]:
    length = shitgotreal[cont-1][-4:]
    data = idat[:-8]
    checksum = idat[-8:-4]
    idat_chunks.append(IDATChunk(cont,length, data, checksum))
for x in idat_chunks:
    print "IDAT " + str(x.counter) + ": ..."
    getCorrectData(x)
    print "|------|"
