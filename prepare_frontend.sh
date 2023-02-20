#!/bin/bash
echo Creating nginx config

sudo cp nginx/frontend.conf /etc/nginx/conf.d/frontend.conf
sudo cp nginx/simulator.conf /etc/nginx/conf.d/simulator.conf
