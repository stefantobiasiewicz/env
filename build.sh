#!/bin/bash

echo Building Cloud-iot
cd ../terra_cloud_iot
pwd
mvn clean package -P service -DskipTests
docker rmi -f cloud_iot_image
docker build -t cloud_iot_image .

echo Building Cloud-iot-simulator
mvn clean package -P simulator -DskipTests
docker rmi -f cloud_iot_simulator_image
docker build -f ./Dockerfile-sim -t cloud_iot_simulator_image .