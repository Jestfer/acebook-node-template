#!/bin/bash
# cd ~/aws-codedeploy
cd ../../var/www/html/
/usr/local/bin/pm2 startOrReload ecosystem.config.json
# pm2 startOrReload ecosystem.config.json