#!/bin/bash
# cd ~/aws-codedeploy
cd ../../var/www/html/
node ./bin/www
# pm2 startOrReload ecosystem.config.json