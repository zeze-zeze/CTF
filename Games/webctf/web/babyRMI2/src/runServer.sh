#!/bin/bash
cd /src
sudo -u nobody java -cp "deps/*:." -Djava.security.policy=my.policy com.kaibro.rmi.Server
