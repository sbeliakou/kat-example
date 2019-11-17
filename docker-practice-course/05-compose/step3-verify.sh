#!/bin/bash

[ -f /.ok ] && echo done ||
docker inspect nginx | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep '1.24.1' &&
docker inspect nginx | jq -r '.[].Config.Image' | egrep '^nginx:alpine$' &&
docker inspect nginx | jq -r '.[].HostConfig.PortBindings."80/tcp"[].HostPort' | egrep '^10084$' &&
docker inspect tomcat | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep '1.24.1' &&
docker inspect tomcat | jq -r '.[].Config.Image' | egrep '^tomcat:jdk8-openjdk-slim$' &&
docker inspect tomcat | jq -r '.[].NetworkSettings.Networks' | grep '{}' &&
[ $(curl -s localhost:10084 | grep -c "title.Apache.Tomcat.8") -eq 1 ]  &&
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
    "scenario": "05-compose.3", 
    "score": ${TASK_SCORE}
  }
}
EOF


