#!/bin/bash
# cd ~/aws-codedeploy
cd ../../var/www/html/
# npm install pm2 -g
~/.nvm/versions/node/v15.4.0/bin/pm2 startOrReload ecosystem.config.json
# pm2 startOrReload ecosystem.config.json
