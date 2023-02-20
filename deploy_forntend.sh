#!/bin/bash
echo Pulling simulator frontend
cd ../Tai-sim-frontend
pwd

git pull

cd Tai-sim-frontend
sudo cp -R dist /var/www/html/sim-frontend

echo Pulling frontend
cd ../terra_web
pwd

git pull
sudo cp -R dist /var/www/html/frontend

echo Restarting nginx
sudo systemctl restart nginx

