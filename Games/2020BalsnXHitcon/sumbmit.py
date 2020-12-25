import requests

def submit(teamID, adID, flag):
    r = requests.post('https://api.balsnctf.com/api/v1/flag', headers={'Content-type: ': 'application/json'}, json={"teamID": teamID, "adID": adID, "flag": flag})
    return 'ok'
