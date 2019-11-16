#!/bin/bash

docker inspect nginx | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep '1.24.1' &&
docker inspect nginx | jq -r '.[].Config.Image' | egrep '^nginx:alpine$' &&
docker inspect nginx | jq -r '.[].HostConfig.PortBindings."80/tcp"[].HostPort' | egrep '^10084$' &&
docker inspect tomcat | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep '1.24.1' &&
docker inspect tomcat | jq -r '.[].Config.Image' | egrep '^tomcat:jdk8-openjdk-slim$' &&
docker inspect tomcat | jq -r '.[].NetworkSettings.Networks' | grep '{}' &&
[ $(curl -s localhost:10084 | grep -c "title.Apache.Tomcat.8") -eq 1 ]