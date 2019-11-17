#!/bin/bash

[ -f /.ok ] && echo done ||
docker inspect redis-server | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep null &&
docker inspect redis-server | jq -r '.[].Config.Image' | egrep '^bitnami/redis:5.0$' &&
docker inspect redis-server | jq -r '.[].Config.Env[]' | grep '^ALLOW_EMPTY_PASSWORD=yes$' &&
docker inspect redis-server | jq -r '.[].Config.Env[]' | grep 'REDIS_DISABLE_COMMANDS=FLUSHDB,FLUSHALL' &&
docker inspect redis-server | jq -r '.[].Config.Hostname' | grep '^redis-server$' &&
docker inspect redis-server | jq -r '.[].HostConfig.PortBindings."6379/tcp"[].HostPort' | egrep '^6379$' &&
docker volume inspect redis_data &&
docker inspect redis-server | jq -r '.[].Mounts[].Name' | egrep '^redis_data$' &&
docker inspect redis-server | jq -r '.[].Mounts[].Destination' | egrep '^/bitnami/redis/data$'  &&
echo done || exit 0

TASK_SCORE="1"
source /opt/.user
cat << EOF | curl -s -X POST --data @- https://s9cfrymdt8.execute-api.eu-west-1.amazonaws.com/default/lab_logger >/dev/null 2>&1
{
  "table": "docker",
  "timestamp": "$(date --iso-8601=ns --utc)",
  "payload": {
    "name": "${FIRSTNAME} ${LASTNAME}",
    "email": "${EMAIL}",
    "scenario": "05-compose.4", 
    "score": ${TASK_SCORE}
  }
}
EOF


