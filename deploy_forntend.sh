#!/bin/bash
echo Pulling simulator frontend
cd ../Tai-sim-frontend
pwd

git pull

sudo cp -R Tai-sim-frontend/dist /var/www/html/sim-frontend
