import pickle
import base64

loader = lambda x: pickle.loads(base64.b64decode(x))
buffer_dict = loader(open('k.txt', 'rb').read())

#print(type(buffer_dict), buffer_dict[0:10], len(buffer_dict))
print(type(buffer_dict), buffer_dict, len(hex(buffer_dict)))
#open('a_dump', 'wb').write(str(buffer_dict).encode())
#for k in buffer_dict.keys():
#    open(k, 'wb').write(buffer_dict[k])
