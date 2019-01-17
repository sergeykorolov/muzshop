#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/musicshop-1.0-SNAPSHOT.jar \
    user@192.168.119.128:/home/user/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa user@192.168.119.128 << EOF
pgrep java | xargs kill -9
nohup java -jar musicshop-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'