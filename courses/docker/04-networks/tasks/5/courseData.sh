#!/bin/bash

docker network rm my_custom_network_1 &
docker network rm my_custom_network_2 &
docker run -dt --name alpine_ping alpine &
docker run -dt --name alpine_pong alpine &