from flask import Flask, request, Response
import asyncio
import sys
from botbuilder.core import (BotFrameworkAdapter,
                            BotFrameworkAdapterSettings,
                            TurnContext)
from botbuilder.schema import Activity
from accounts import *
from bot import *

app = Flask(__name__)
initUserDB()
initLogDB(app)

bot = Bot()

@app.route('/api/messages',methods=['POST'])
def messages():
    if "application/json" in request.headers.get("Content-Type"):
        body = request.json
    else:
        return Response(status=415)
    activity = Activity().deserialize(body)
    if activity.type!='message':
        return Response(status=201)
    ip_addr = request.headers.get('X-Real-IP')
    if ip_addr is None:
        ip_addr = request.remote_addr
    asyncio.run(bot.on_turn(activity, request.headers, ip_addr))
    return Response(status=201)

if __name__ == '__main__':
    app.run()
