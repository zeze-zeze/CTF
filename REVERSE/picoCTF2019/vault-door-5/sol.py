#coding=utf-8

encode = 'JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVmJTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2JTM0JTVmJTYzJTMxJTM0JTYzJTYzJTY1JTMxJTMx'
print ''.join(encode.decode('base64').split('%')).decode('hex')
