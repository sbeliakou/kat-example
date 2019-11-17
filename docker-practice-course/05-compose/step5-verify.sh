#!/bin/bash

[ -f /.ok ] && echo done ||
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
curl -s localhost:10087 | grep 'Connected successfully. Great work!'  &&
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
    "scenario": "05-compose.5", 
    "score": ${TASK_SCORE}
  }
}
EOF


