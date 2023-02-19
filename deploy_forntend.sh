#!/bin/bash
echo Pulling simulator frontend
cd ../Tai-sim-frontend
pwd

git pull

cd Tai-sim-frontend
sudo cp -R dist /var/www/html/sim-frontend
