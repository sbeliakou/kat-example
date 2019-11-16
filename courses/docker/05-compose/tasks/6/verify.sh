#!/bin/bash

# docker run -d -v redis_data:/bitnami/redis/data --hostname redis-server --name redis-server -p 6379:6379 -e ALLOW_EMPTY_PASSWORD=yes -e REDIS_DISABLE_COMMANDS=FLUSHDB,FLUSHALL bitnami/redis:5.0

docker inspect redis-server | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep null &&
docker inspect redis-server | jq -r '.[].Config.Image' | egrep '^bitnami/redis:5.0$' &&
docker inspect redis-server | jq -r '.[].Config.Env[]' | grep '^ALLOW_EMPTY_PASSWORD=yes$' &&
docker inspect redis-server | jq -r '.[].Config.Env[]' | grep 'REDIS_DISABLE_COMMANDS=FLUSHDB,FLUSHALL' &&
docker inspect redis-server | jq -r '.[].Config.Hostname' | grep '^redis-server$' &&
docker inspect redis-server | jq -r '.[].HostConfig.PortBindings."6379/tcp"[].HostPort' | egrep '^6379$' &&
docker volume inspect redis_data &&
docker inspect redis-server | jq -r '.[].Mounts[].Name' | egrep '^redis_data$' &&
docker inspect redis-server | jq -r '.[].Mounts[].Destination' | egrep '^/bitnami/redis/data$'

