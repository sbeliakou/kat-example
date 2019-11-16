#!/bin/bash

docker network create -d bridge --subnet=192.158.0.0/16 --gateway=192.158.0.1 --ip-range=192.158.1.0/24 --opt "com.docker.network.driver.mtu"="1400" my_custom_network_1 &
docker network create -d bridge --subnet=172.53.0.0/16 --gateway=172.53.0.1 --ip-range=172.53.17.0/24 --opt "com.docker.network.driver.mtu"="900" my_custom_network_2 &
