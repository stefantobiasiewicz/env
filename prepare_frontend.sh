#!/bin/bash
echo Creating nginx config

sudo cp nginx/frontend.conf /etc/nginx/conf.d/frontend.conf
sudo cp nginx/simulator.conf /etc/nginx/conf.d/simulator.conf

echo Copying ssl keys
sudo mkdir -p /etc/nginx/ssl
sudo cp -r nginx/ssl/www.tai.pl.csr /etc/nginx/ssl/www.tai.pl.csr
sudo cp -r nginx/ssl/www.tai.pl.key /etc/nginx/ssl/www.tai.pl.key
