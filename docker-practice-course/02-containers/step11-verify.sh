#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(journalctl -ab CONTAINER_NAME=nginx_journal | grep $(docker ps | grep nginx_journal | awk '{print $1}') | wc -l) -ge 1 ]] &&
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
#     "scenario": "02-containers.11", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


