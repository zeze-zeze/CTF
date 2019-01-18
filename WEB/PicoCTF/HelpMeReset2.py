import base64
import zlib

session='.eJw9zcEKgzAQBNBfKXPOIUitkF9pRVa7qBCzskmQIv57kx56G2Z4zIkpq3JIcFhYBQa7xLiOnuGemMSLlu439Qa6zksaJskVNAY5sg5vSgR34pYqIU9bEa19NLbrWnuHsQbHsiYudcw760ahxCQfKdDAU6Q51DSqHOEV0F9FqIT5f3V9ASeDNrs.DyL0rg.TuMhbZt6S5hZPzeFwP5BS5vHoow'
session=session.split('.')[1]
data=session+b'='*(4-(len(session)%4))
data=base64.urlsafe_b64decode(data)
#print(data)
data=zlib.decompress(data)
print(data)