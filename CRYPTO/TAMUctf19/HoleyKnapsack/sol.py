#! python2
# coding=utf-8
from pwn import *

def campare(a, b):
  return a>b

cipher='11b90d6311b90ff90ce610c4123b10c40ce60dfa123610610ce60d450d000ce61061106110c4098515340d4512361534098509270e5d09850e58123610c9'
public=[99, 1235, 865, 990, 5, 1443, 895, 1477]

knapsack={}
for i in range(256):
  bin_i=bin(i)[2:].zfill(8)
  rel=0
  for j in range(8):
    if bin_i[j]=='1':
      rel+=public[7-j]
  knapsack[rel]=i

flag=''
guess=''
for c in cipher:
  guess+=c
  try:
    a=knapsack[int(guess, 16)]
    guess=''
  except:
    continue
  if a>=1 and a<128:
    flag+=chr(a)
print flag