#!/bin/bash

echo Building Cloud-iot
cd ../terra_cloud_iot
pwd

git pull

mvn clean package -P service -DskipTests
sudo docker rmi -f cloud_iot_image
sudo docker build -t cloud_iot_image .

echo Building Cloud-iot-simulator
mvn clean package -P simulator -DskipTests
sudo docker rmi -f cloud_iot_simulator_image
sudo docker build -f ./Dockerfile-sim -t cloud_iot_simulator_image .

cd ../terra_cloud_auth/auth
pwd

git pull

mvn clean package -DskipTests
sudo docker rmi -f cloud_auth_image
sudo docker build -t cloud_auth_image .
