#!/bin/bash

source /etc/venture

[ "$(docker inspect httpd_web | jq -r '.[].HostConfig.RestartPolicy.Name')" == "on-failure" ] &&
docker inspect httpd_web | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep '1.24.1' &&
docker inspect httpd_web | jq -r '.[].Config.Env[]' | grep 'COURSE=compose' &&
docker inspect httpd_web | jq -r '.[].Config.Env[]' | grep "MAINTAINER=${StudentShort}" &&
docker inspect httpd_web | jq -r '.[].HostConfig.PortBindings."80/tcp"[].HostPort' | egrep '^10082$'