#coding=utf-8
import os

f = open('myGOD', 'a')
for i in range(100000):
  f.write(os.urandom(50))
  f.write('BambooFox{' + os.urandom(30) + '}')
  if i == 58943:
    f.write('BambooFox{D0_Y0u_Kn0w_R3gul4r_3xpr3ssi0n}')
