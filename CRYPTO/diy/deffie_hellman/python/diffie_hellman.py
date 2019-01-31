from Crypto.Util.number import *
from random import randint

def NAF(num_dec):
  num_bin=bin(num_dec)
  check_duplicate_1=False
  num_naf_opposite=[]
  for i in range(1, len(num_bin)-1):
    if num_bin[len(num_bin)-i]=='1' and check_duplicate_1==False:
      if num_bin[len(num_bin)-i-1]=='1':
        check_duplicate_1=True
        num_naf_opposite.append(-1)
      else:
        num_naf_opposite.append(1)
    elif num_bin[len(num_bin)-i]=='1' and check_duplicate_1==True:
      num_naf_opposite.append(0)
    elif num_bin[len(num_bin)-i]=='0' and check_duplicate_1==True:
      if num_bin[len(num_bin)-i-1]=='0':
        num_naf_opposite.append(1)
        check_duplicate_1=False
      else:
        num_naf_opposite.append(-1)
        check_duplicate_1=True
    else:
      num_naf_opposite.append(0)
  if check_duplicate_1==True:
    num_naf_opposite.append(1)
  return num_naf_opposite

def AF(num_dec):
  af_opposite=[]
  num_bin=bin(num_dec)
  for i in range(len(num_bin)-2):
    if num_bin[len(num_bin)-i-1]=='1':
      af_opposite.append(1)
    else:
      af_opposite.append(0)
  return af_opposite

def Power(af_opposite, p, base):
  result=1
  for i in range(len(af_opposite)):
    result=result**2
    if af_opposite[len(af_opposite)-i-1]==1:
      result*=base
    result%=p
  return result

def Get_Public_Key(private_key, p, base):
  return Power(AF(private_key), p, base)

def Get_Key(public_key, private_key, p):
  return Power(AF(private_key), p, public_key)


p=getPrime(1024)
g=randint(100, 1000)
private_a=randint(0, p-1)
private_b=randint(0, p-1)
public_a=Get_Public_Key(private_a, p, g)
public_b=Get_Public_Key(private_b, p, g)

print(Get_Key(public_b, private_a, p))
print(Get_Key(public_a, private_b, p))