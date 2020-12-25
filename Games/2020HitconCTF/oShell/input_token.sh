#!/usr/bin/expect
spawn sshpass -p oshell ssh oshell@54.150.148.61
expect "Team token:"
send "93b99e57-f21c-4b90-862f-3619a5796cf1\n"
interact