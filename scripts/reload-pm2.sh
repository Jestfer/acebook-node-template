#!/bin/bash
# cd ~/aws-codedeploy
cd ../../var/www/html/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
npm install pm2 -g

pm2 startOrReload ecosystem.config.json
# ~/.nvm/versions/node/v15.4.0/bin/pm2 startOrReload ecosystem.config.json
