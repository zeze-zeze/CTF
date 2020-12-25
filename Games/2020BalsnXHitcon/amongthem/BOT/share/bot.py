from sys import exit
import os
from botbuilder.core import BotFrameworkAdapter, BotFrameworkAdapterSettings
from botbuilder.core import ActivityHandler, TurnContext, CardFactory, MessageFactory
from botbuilder.schema import ( ChannelAccount, Attachment,
                                Activity, ActivityTypes, ActionTypes, CardAction,
                                SigninCard, ThumbnailCard)
import time
from game import *
from accounts import *
from config import *

SETTINGS = BotFrameworkAdapterSettings(APP_ID, APP_PASSWORD)
ADAPTER = BotFrameworkAdapter(SETTINGS)

class Bot:
    def __init__(self):
        self.ID2USER = {}
        self.USER2ID = {}
        with open('WAF.txt','r') as f:
            self.WAF = f.read().strip().split('\n')
        if len(self.WAF)==1 and self.WAF[0]=='':
            self.WAF = []
        self.WAF = list(map(str.strip,self.WAF))
        self.GAME = Game(int(time.time()),len(self.WAF))
        self.CONVREF = {}

    def add_conversation_reference(self, activity):
        convref = TurnContext.get_conversation_reference(activity)
        self.CONVREF[(activity.from_property.id, activity.channel_id)] = convref

    async def sendmsg(self, activity, headers, msg):
        await ADAPTER.process_activity(activity,
                                       headers['Authorization'] if 'Authorization' in headers else '',
                                       lambda context: context.send_activity(msg))
        return

    async def forwardmsg(self, target, msg):
        if target in self.USER2ID and self.USER2ID[target] in self.CONVREF:
            await ADAPTER.continue_conversation(self.CONVREF[self.USER2ID[target]],
                                                lambda context: context.send_activity(msg),
                                                APP_ID)
        return

    async def process_result(self, activity, headers, result):
        if 'response' in result:
            await self.sendmsg(activity, headers, result['response'])
        if 'forward' in result:
            for record in result['forward']['target']:
                await self.forwardmsg(record,result['forward']['msg'])
        return

    def apply_waf(self, msg):
        for word in msg:
            for waf in self.WAF:
                if waf in word:
                    return waf
        return False

    async def on_turn(self, activity, headers, ip_addr):
        msg = activity.text.split(' ')
        guard = self.apply_waf(msg)
        if guard is not False:
            await self.sendmsg(activity, headers, f'{guard} is blocked')
            return
        userid = activity.from_property.id
        channelid = activity.channel_id
        if (userid, channelid) not in self.CONVREF:
            self.add_conversation_reference(activity)

        if msg[0]!='login':
            if (userid,channelid) not in self.ID2USER:
                await self.sendmsg(activity, headers, 'user not authenticated')
                return
            elif self.ID2USER[(userid,channelid)] not in self.GAME.Player:
                await self.sendmsg(activity, headers, 'you have been defeated, respawn?')
                return
        T = int(time.time())
        try:
            p = self.ID2USER[(userid, channelid)]
            if T-self.GAME.Player[p]['cooldown']<1:
                await self.sendmsg(activity, headers, 'slow down bro')
                return
            self.GAME.Player[p]['cooldown'] = T
        except:
            pass

        if msg[0]=='login':
            if maxClientThres(ip_addr) is True:
                await self.sendmsg(activity, headers, 'max client threshold reached')
                return
            if len(msg)<3:
                await self.sendmsg(activity, headers, 'usage : login <username> <password>')
                return
            if msg[1] in self.GAME.Player:
                await self.sendmsg(activity, headers, f'player "{msg[1]}" already exists')
                return
            if authenticateUser(msg[1],msg[2]) is True:
                admin = True
                prompt = 'admin login succeeded'
            else:
                admin = False
                prompt = 'user login succeeded'
            self.GAME.newPlayer(msg[1], T, ip_addr, admin)
            self.ID2USER[(userid,channelid)] = msg[1]
            self.USER2ID[msg[1]] = (userid,channelid)
            incClient(ip_addr)
            await self.sendmsg(activity, headers, prompt)

        elif msg[0]=='infoall':
            if self.GAME.Player[p]['admin'] is not True:
                await self.sendmsg(activity, headers, 'access denied')
            P = []
            for player in self.GAME.Player:
                P.append(self.GAME.infoPlayer(player)['response'])
            msg = MessageFactory.carousel(text='Player List',
                                          attachments=P)
            await self.sendmsg(activity, headers, msg)

        elif msg[0]=='infoself':
            P = self.GAME.infoPlayer(p)['response']
            msg = Activity(type=ActivityTypes.message,
                           attachments=[P])
            await self.sendmsg(activity, headers, msg)

        elif msg[0]=='sendmoney':
            if len(msg)<3:
                await self.sendmsg(activity, headers, 'usage : sendmoney <target_user> <amount>')
                return
            if self.GAME.Player[p]['admin'] is not True:
                await self.sendmsg(activity, headers, 'access denied')
                return
            res = self.GAME.sendmoney(msg[1],msg[2])
            if res is not None:
                await self.process_result(activity, headers, res)

        elif msg[0]=='buy':
            res = self.GAME.buy(p,msg[1])
            if res is not None:
                await self.process_result(activity, headers, res)

        elif msg[0]=='sell':
            res = self.GAME.sell(p)
            if res is not None:
                await self.process_result(activity, headers, res)

        elif msg[0]=='move':
            res = self.GAME.move(p,T,msg[1])
            if res is not None:
                await self.process_result(activity, headers, res)

        elif msg[0]=='useitem':
            res = self.GAME.useitem(p,T,*msg[1:])
            if res is not None:
                await self.process_result(activity, headers, res)

        elif msg[0]=='gamble':
            res = await self.GAME.gamble(p)
            if res is not None:
                await self.process_result(activity, headers, res)

        else:
            await self.sendmsg(activity, headers, 'invalid')

        return
