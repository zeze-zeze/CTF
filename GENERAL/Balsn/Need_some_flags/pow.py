import hashlib
import os



def verify(prefix,answer,difficulty):
  Hash=hashlib.sha256(prefix+answer)
  if Hash.hexdigest()[:difficulty] == "0" * difficulty:
    return True
  return False


if __name__ == "__main__":
  difficulty=5
  prefix=os.urandom(6).encode("hex")
  print "sha256( %s + XXX)[:%d] == %s " % (prefix,difficulty,"0"*difficulty) 
  answer=raw_input("XXX = ")
  if verify(prefix,answer,difficulty):
    print "goodjob"
    exit(57)

