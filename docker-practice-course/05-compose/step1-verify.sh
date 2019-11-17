#!/bin/bash

[ -f /.ok ] && echo done ||
source /etc/venture

[ "$(docker inspect httpd_web | jq -r '.[].HostConfig.RestartPolicy.Name')" == "on-failure" ] &&
docker inspect httpd_web | jq -r '.[].Config.Labels."com.docker.compose.version"' | grep '1.24.1' &&
docker inspect httpd_web | jq -r '.[].Config.Env[]' | grep 'COURSE=compose' &&
docker inspect httpd_web | jq -r '.[].Config.Env[]' | grep "MAINTAINER=${StudentShort}" &&
docker inspect httpd_web | jq -r '.[].HostConfig.PortBindings."80/tcp"[].HostPort' | egrep '^10082$'  &&
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
#     "scenario": "05-compose.1", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


