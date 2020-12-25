from config import *

def initUserDB():
    global userdb
    userdb = set()
    userdb.add(('admin',adminpwd))

def authenticateUser(username, passwd):
    if (username, passwd) in userdb:
        return True
    return False
