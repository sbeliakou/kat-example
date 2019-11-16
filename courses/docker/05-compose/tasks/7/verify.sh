#!/bin/bash

# docker network create php
# docker run -d --net php --hostname db --name db -v $(pwd)/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_USER=admin -e MYSQL_PASSWORD=test -e MYSQL_DATABASE=database -p 8889:3306 mysql:5.7
# docker run -d --net php --hostname web --name web -v $(pwd)/app:/var/www/html -e ALLOW_OVERRIDE=true -p 10087:80 web_locally_build

docker inspect db | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep null &&
docker inspect db | jq -r '.[].Config.Env[]' | egrep '^MYSQL_ROOT_PASSWORD=root$' &&
docker inspect db | jq -r '.[].Config.Env[]' | egrep '^MYSQL_USER=admin$' &&
docker inspect db | jq -r '.[].Config.Env[]' | egrep '^MYSQL_PASSWORD=test$' &&
docker inspect db | jq -r '.[].Config.Env[]' | egrep '^MYSQL_DATABASE=database$' &&
docker inspect db | jq -r '.[].Config.Hostname' | grep '^db$' &&
docker inspect db | jq '.[].NetworkSettings.Networks.bridge' | grep null &&
docker inspect db | jq -r '.[].HostConfig.PortBindings."3306/tcp"[].HostPort' | egrep '^8889$' &&
docker inspect db | jq -r '.[].Mounts[].Destination' | egrep '^/var/lib/mysql$' &&
docker inspect web | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep null &&
docker inspect web | jq -r '.[].Config.Image' | grep 'web_locally_build' &&
docker inspect web | jq -r '.[].Config.Hostname' | grep '^web$' &&
docker inspect web | jq -r '.[].HostConfig.PortBindings."80/tcp"[].HostPort' | egrep '^10087$' &&
docker inspect web | jq -r '.[].Mounts[].Destination' | egrep '^/var/www/html[/]*$' &&
docker inspect web | jq '.[].NetworkSettings.Networks.bridge' | grep null &&
curl -s localhost:10087 | grep 'Connected successfully. Great work!'