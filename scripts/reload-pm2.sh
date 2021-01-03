#!/bin/bash
# cd ~/aws-codedeploy
cd ../../var/www/html/
# npm install pm2 -g

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# pm2 startOrReload ecosystem.config.json
~/.nvm/versions/node/v15.4.0/bin/pm2 startOrReload ecosystem.config.json
