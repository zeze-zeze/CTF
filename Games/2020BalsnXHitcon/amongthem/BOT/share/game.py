from botbuilder.core import CardFactory, MessageFactory
from botbuilder.schema import Attachment, ThumbnailCard
import asyncio
import random
import uuid
from maxclient import *
from displaylogger import *

class Game:
    def __init__(self, T, restrictions):
        self.Item = {'flag':{'price':1400-restrictions*20,
                             'desc':'A shiny flag just for you',
                             'usage':self.flag},
                     'emblem':{'price':500,
                               'desc':'Emblem worn by a firefighter who lost his life saving his daughter',
                               'usage':self.emblem},
                     'tears':{'price':500,
                               'desc':'Crystalized tears of the goddess exiled from heaven for shielding people against demons',
                               'usage':self.tears},
                     'cursedcodex':{'price':100,
                                    'desc':'Nobody knows what the book holds, as all that remain of previous owners are little piles of ashes.',
                                    'usage':self.cursedcodex},
                     'crystaltrinklet':{'price':100,
                                        'desc':'A trinklet that brings upon the wrath of gods themselves',
                                        'usage':self.crystaltrinklet},
                     'portal':{'price':800,
                               'desc':'Alien technology developed by, well... aliens',
                               'usage':self.portal}}
        self.Player = {}
        self.MAP_SIZE = 30
        self.MAP = [[set() for j in range(self.MAP_SIZE)] for i in range(self.MAP_SIZE)]
        displaylog('',T,'start','')

    def newPlayer(self,player,T,ip,admin):
        self.Player[player] = {'admin':admin,
                               'money':1000,
                               'xpos':random.randint(0,self.MAP_SIZE-1),
                               'ypos':random.randint(0,self.MAP_SIZE-1),
                               'item':None,
                               'ip':ip,
                               'uuid':str(uuid.uuid4()),
                               'cooldown':T}
        self.MAP[self.Player[player]['xpos']][self.Player[player]['ypos']].add(player)
        displaylog(self.Player[player]['uuid'],T,'spawn',f'{getcolor(ip, self.Player[player]["admin"])}#{self.Player[player]["xpos"]}#{self.Player[player]["ypos"]}')
        return

    def deletePlayer(self,player,T):
        self.MAP[self.Player[player]['xpos']][self.Player[player]['ypos']].remove(player)
        decClient(self.Player[player]['ip'])
        displaylog(self.Player[player]['uuid'],T,'death','')
        self.Player.pop(player,None)
        return {'response':f'{player} logout succeeded'}

    def infoPlayer(self, player):
        P = CardFactory.thumbnail_card(ThumbnailCard(title = f'Player Name : {player}',
                                                     text = '\n\n'.join([f'Money : {self.Player[player]["money"]}',
                                                                         f'Item : {self.Item[self.Player[player]["item"]]["desc"] if self.Player[player]["item"] is not None else "nothing"}',
                                                                         f'X-coord : {self.Player[player]["xpos"]}',
                                                                         f'Y-coord : {self.Player[player]["ypos"]}'])))
        return {'response':P}

    def sendmoney(self, player, money):
        if player not in self.Player:
            return {'response':f'{player} not found'}
        try:
            money = int(money)
            if money<0:
                money = 0
        except:
            money = 0
        self.Player[player]['money']+=money
        return {'response':f'${money} sent to {player}'}

    def move(self, player, T, direction):
        msg = f'moved {direction}'
        self.MAP[self.Player[player]['xpos']][self.Player[player]['ypos']].remove(player)
        if direction=='up':
            if self.Player[player]['ypos']>0:
                self.Player[player]['ypos']-=1
                displaylog(self.Player[player]['uuid'],T,'walk','up')
        elif direction=='down':
            if self.Player[player]['ypos']<self.MAP_SIZE-1:
                self.Player[player]['ypos']+=1
                displaylog(self.Player[player]['uuid'],T,'walk','down')
        elif direction=='left':
            if self.Player[player]['xpos']>0:
                self.Player[player]['xpos']-=1
                displaylog(self.Player[player]['uuid'],T,'walk','left')
        elif direction=='right':
            if self.Player[player]['xpos']<self.MAP_SIZE-1:
                self.Player[player]['xpos']+=1
                displaylog(self.Player[player]['uuid'],T,'walk','right')
        else:
            msg = f'Invalid direction {direction}'
        self.MAP[self.Player[player]['xpos']][self.Player[player]['ypos']].add(player)
        return {'response':msg}

    def buy(self,player,item):
        if item not in self.Item or player not in self.Player or self.Player[player]['money']<self.Item[item]['price']:
            return {'response':f'failed to buy {item}'}
        self.Player[player]['item'] = item
        self.Player[player]['money']-=self.Item[item]['price']
        return {'response':f'successfully bought {item}'}

    def sell(self, player):
        if self.Player[player]['item'] is None:
            return {'response':f'nothing to sell'}
        self.Player[player]['money']+=self.Item[self.Player[player]['item']]['price']//2
        return {'response':f'successfully sold {self.Player[player]["item"]}'}

    def useitem(self, player, T, *arg):
        if self.Player[player]['item'] is None:
            return None
        return self.Item[self.Player[player]['item']]['usage'](player,T,*arg)

    async def gamble(self, player):
        money = self.Player[player]['money']
        await asyncio.sleep(money//100)
        if random.randint(0,9)==9:
            self.Player[player]['money'] = int(money*1.05)
            return {'response':'finally got some money, but at what cost?'}
        else:
            self.Player[player]['money'] = 0
            return {'response':'the poor man\'s game'}

    def flag(self,player,T,*arg):
        self.Player[player]['item'] = None
        with open('/etc/balstion/flag/flag') as f:
            flag = f.read()
        displaylog(self.Player[player]['uuid'],T,'flag','')
        return {'response':flag}
    
    def emblem(self,player,T,*arg):
        return {'response':'The emblem glows slightly when touch'}

    def tears(self,player,T,*arg):
        return {'response':'A warm feeling rises as you hold the crytal up to your heart'}

    def cursedcodex(self,player,T,*arg):
        dropitems = [None]
        dropmoney = 0
        slayed = set()
        for i in range(max(self.Player[player]['xpos']-1,0), min(self.Player[player]['xpos']+2,self.MAP_SIZE)):
            for j in range(max(self.Player[player]['ypos']-1,0), min(self.Player[player]['ypos']+2,self.MAP_SIZE)):
                if i==self.Player[player]['xpos'] and j==self.Player[player]['ypos']:
                    continue
                for p in self.MAP[i][j].copy():
                    if p not in self.Player:
                        self.MAP[i][j].remove(p)
                    elif self.Player[p]['item']!='emblem':
                        slayed.add(p)
                        if random.randint(0,9)>5:
                            dropmoney+=20
                        if self.Player[p]['item'] is not None:
                            dropitems.append(self.Player[p]['item'])
                        self.deletePlayer(p,T)
        self.Player[player]['money']+=dropmoney
        self.Player[player]['item'] = random.choice(dropitems)
        displaylog(self.Player[player]['uuid'],T,'attack','explosion')
        return {'response':f'With a bright flash, the codex released a powerful explosion, taking out every single person beside you',
                'forward':{'target':slayed,
                           'msg':f'you have been slain by {player}'}}

    def crystaltrinklet(self,player,T,*arg):
        dropitems = [None]
        dropmoney = 0
        slayed = set()
        for i in range(max(self.Player[player]['xpos']-2,0), min(self.Player[player]['xpos']+3,self.MAP_SIZE)):
            for j in range(max(self.Player[player]['ypos']-2,0), min(self.Player[player]['ypos']+3,self.MAP_SIZE)):
                if (i==self.Player[player]['xpos'])^(j==self.Player[player]['ypos']) is False:
                    continue
                for p in self.MAP[i][j].copy():
                    if p not in self.Player:
                        self.MAP[i][j].remove(p)
                    elif self.Player[p]['item']!='tears':
                        slayed.add(p)
                        if random.randint(0,9)>5:
                            dropmoney+=20
                        if self.Player[p]['item'] is not None:
                            dropitems.append(self.Player[p]['item'])
                        self.deletePlayer(p,T)
        self.Player[player]['money']+=dropmoney
        self.Player[player]['item'] = random.choice(dropitems)
        displaylog(self.Player[player]['uuid'],T,'attack','lightning')
        return {'response':f'No one can escape judgement day',
                'forward':{'target':slayed,
                           'msg':f'you have been slain by {player}'}}

    def portal(self, player, T,*arg):
        self.Player[player]['item'] = None
        try:
            xpos = int(arg[0])
            ypos = int(arg[1])
        except:
            return {'response':'whoopsies, seems like we got an unfunctional portal here'}
        self.MAP[self.Player[player]['xpos']][self.Player[player]['ypos']].remove(player)
        self.Player[player]['xpos'] = xpos
        self.Player[player]['ypos'] = ypos
        displaylog(self.Player[player]['uuid'],T,'teleport',f'{xpos}#{ypos}')
        self.MAP[self.Player[player]['xpos']][self.Player[player]['ypos']].add(player)
        return {'response':f'you woke up at ({xpos},{ypos}) feeling dizzy'}


