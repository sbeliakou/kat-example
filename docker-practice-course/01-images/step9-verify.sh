#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(cat /root/.docker/config.json | jq -r '.auths."https://index.docker.io/v1/".auth') != "null" ]] ||
[[ $(cat /home/$(cat /etc/group|grep docker|cut -d: -f4)/.docker/config.json | jq -r '.auths."https://index.docker.io/v1/".auth') != "null" ]] && 
echo done  &&
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
#     "scenario": "01-images.9", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


