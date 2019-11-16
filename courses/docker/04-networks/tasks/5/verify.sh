#!/bin/bash

[[ $(docker exec alpine_ping ping -c1 alpine_pong) ]] &&
[ -z "$(docker exec -it alpine_ping cat /etc/hosts | grep alpine_pong)" ] &&
[ -z "$(docker exec -it alpine_pong cat /etc/hosts | grep alpine_ping)" ] &&
echo done
