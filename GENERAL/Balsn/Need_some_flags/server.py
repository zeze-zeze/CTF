#!/usr/bin/python2
import tempfile
import os
import nonsecret

flag_count=0
edited=False

welcome='''
Welcome to BalsnCTF. We are so glad to see you guys here.

To host a CTF, we need tons of flags. Then I thought maybe you can help us.
We would appreciate it if you can provide us some flags.
'''

menu='''
[0] Write a flag
[1] Edit a flag
[2] push your flag
[3] Secret flag
[4] Bye bye
'''

filecontent='''
flag="%s"
def printflag():
  print flag
'''

flag=""

def writeflag():
  global flag_count
  global flag
  if flag_count>2:
     print "Thank you, But we only need three flags"
     return
  flag_count+=1
  filename = os.urandom(10).encode("hex")
  print "Here is your temp flag name",filename
  flagfile=open(filename,"w")
  flag=raw_input("input the flag (len <= 0x30):")
  if len(flag)>0x30:
    print "You can't read?"
    exit()
  flagfile.write(flag)
  return

def editflag():
  global edited
  if edited:
    print 'No more chance'
    exit()
  edited=True
  print "Why do you want to edit the flag? You should be more careful! I can only let you edit 6 bytes and only edit once"
  filename=raw_input("Please give me the flag's name :")
  if not os.path.exists(filename) or os.path.realpath(".") != os.path.realpath(os.path.split(filename)[0]) or os.path.split(filename)[1] in ["nonsecret.py","server.py"]:
    print "Please don't hack me!!!"
    exit()
  oldcontent=open(filename).read()
  flagfile=open(filename,"w")
  editcontent=raw_input("Please input the edited content (in hex)").decode("hex")[:6]
  editoffset=int(raw_input("Please input the offset"))
  if len(oldcontent) < editoffset:
    print "You can't do that"
    exit()
  flagfile.write(oldcontent[:editoffset]+editcontent+oldcontent[editoffset+len(editcontent):])
def pushflag():
  '''
  I found a critical bug here.
  So I disable this function before I fix it.
  '''
  #global flag
  #non=open("nonsecret.py","w")
  #global filecontent
  #non.write(filecontent % non)
  #non.close()
  return
  

def secretflag():
  # I know you want this secret flag
  flag="Balsn{this_flag_is_on_the_server}"
  # But I can't give it to you
  del flag
  # How about a non-secret flag
  reload(nonsecret)
  nonsecret.printflag()

def main():
  print welcome
  while True:
    print menu
    option=int(raw_input("What's your choice? "))
    if option == 0:
      writeflag()
    elif option == 1:
      editflag()
    elif option == 2:
      pushflag()
    elif option == 3:
      secretflag()
    else:
      print "Bye"
      exit()

if __name__ == "__main__" :
  main()
