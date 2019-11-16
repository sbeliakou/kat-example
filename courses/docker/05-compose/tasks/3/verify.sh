#!/bin/bash

source /etc/venture

docker inspect nginx_web | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep '1.24.1' &&
docker inspect nginx_web | jq -r '.[].Config.Image' | egrep '^nginx:1.16$' &&
docker inspect nginx_web | jq -r '.[].Config.Env[]' | grep "COURSE=compose" &&
docker inspect nginx_web | jq -r '.[].Config.Env[]' | grep "TASK=${Current}" &&
docker inspect nginx_web | jq -r '.[].Config.Env[]' | grep "MAINTAINER=${StudentShort}" &&
docker inspect nginx_web | jq -r '.[].HostConfig.PortBindings."80/tcp"[].HostPort' | egrep '^10083$' &&
docker inspect nginx_web | jq -r '.[].HostConfig.PortBindings."50000/tcp"[].HostPort' | egrep '^50000$' &&
docker inspect nginx_web | jq -r '.[].HostConfig.LogConfig.Type' | egrep '^journald$' &&
docker inspect nginx_web | jq -r '.[].Mounts[].Destination' | egrep '/usr/share/nginx/html/index.html' &&
curl -s localhost:10083 | grep "$(cat /task/${Current}/index.html)"