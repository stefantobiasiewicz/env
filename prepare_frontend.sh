#!/bin/bash
echo Creating nginx config

sudo cp nginx/frontend.conf /etc/nginx/conf.d/frontend.conf
sudo cp nginx/simulator.conf /etc/nginx/conf.d/simulator.conf

echo Copying ssl keys
sudo mkdir -p /etc/nginx/ssl
sudo cp -r nginx/ssl/dhparam.pem /etc/nginx/ssl/dhparam.pem
sudo cp -r nginx/ssl/nginx-selfsigned.crt /etc/nginx/ssl/nginx-selfsigned.crt
sudo cp -r nginx/ssl/nginx-selfsigned.key /etc/nginx/ssl/nginx-selfsigned.key
