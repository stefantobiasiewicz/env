#!/bin/bash
echo Pulling simulator frontend
cd ../Tai-sim-frontend
pwd

git pull

cd Tai-sim-frontend
echo Coying simulator dist folder
sudo cp -R dist /var/www/html/sim-frontend


echo Pulling frontend
cd ../terra_web
pwd

git pull

echo Coying frontend dist folder
sudo cp -R dist /var/www/html/frontend

echo Restarting nginx
sudo systemctl restart nginx

