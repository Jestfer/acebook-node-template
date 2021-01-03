#!/bin/bash
# cd ~/aws-codedeploy
cd ../../var/www/html/
npm install pm2 -g
pm2 startOrReload ecosystem.config.json
