from flask import Flask, request, Response
import pickle, traceback, base64

Response.default_mimetype = 'text/plain'

app = Flask(__name__)

@app.route("/")
def index():
    return open(__file__).read()

@app.route('/load', methods=['POST'])
def load():
    try:
        data = request.form['data']
        data = base64.b64decode(data)
        data = pickle.loads(data)
        return str(data)
    except:
        return traceback.format_exc()
