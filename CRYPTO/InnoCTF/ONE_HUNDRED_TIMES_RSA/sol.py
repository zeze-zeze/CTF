#coding=utf-8

cipher = 344720057383841903421275696896478972085081008504013168866840867879142406078741088847626681566698326
n = 1522605027922533360535618378132637429718068114961380688657908494580122963258952897654000350692006139

ittr = 1
preflag = 'Inno'.encode('hex')
while True:
  try_plain = pow(cipher, ittr, n)
  try:
    test = hex(try_plain)[2:]
    if preflag in test:
      print test
      break
  except:
    print 'error'
  ittr += 1