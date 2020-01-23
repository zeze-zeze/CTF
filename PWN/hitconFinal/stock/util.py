import json
from websockets import create_connection
ws = create_connection("wss://ws://10.217.0.0:5000/")
ws.send(json.dumps({"op":"addr_sub", "addr":"dogecoin_address"}))
result =  ws.recv()
print (result)
ws.close()
