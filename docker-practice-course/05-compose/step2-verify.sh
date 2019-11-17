#!/bin/bash

[ -f /.ok ] && echo done ||
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
curl -s localhost:10083 | grep "$(cat /task/index.html)"  &&
echo done || exit 0

# TASK_SCORE="1"
# source /opt/.user
# cat << EOF | curl -s -X POST --data @- https://s9cfrymdt8.execute-api.eu-west-1.amazonaws.com/default/lab_logger >/dev/null 2>&1
# {
#   "table": "docker",
#   "timestamp": "$(date --iso-8601=ns --utc)",
#   "payload": {
#     "name": "${FIRSTNAME} ${LASTNAME}",
#     "email": "${EMAIL}",
#     "scenario": "05-compose.2", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


