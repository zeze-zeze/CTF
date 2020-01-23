from pwn import *

r = process('./wrapper')
def wrapper(name, value):
    r.sendafter('Name:', name)
    r.sendafter('Value', value)

def Login(username, password):
    r.sendafter('Your choice:', '1')
    r.sendafter('Username', username)
    r.sendafter('Password', password)

def Register(username, password, contact):
    r.sendafter('Your choice:', '2')
    r.sendafter('Username', username)
    r.sendafter('Password', password)
    r.sendafter('Contact', contact)

def ShowProduct():
    r.sendafter('Your choice:', '3')

wrapper('a', 'a')
Register('a', 'a', 'a')
Login('a', 'a')

print r.recvall(1)
