#!/bin/bash

[ -f /.ok ] && echo done ||
# docker run --name tomcat -d -m 100M --memory-swap -1 --memory-reservation 50M tomcat:jdk8-openjdk-slim

[[ $(docker inspect tomcat | jq -r '.[].HostConfig.MemorySwap') == "-1" ]] &&
[[ $(docker inspect tomcat | jq -r '.[].HostConfig.MemoryReservation') != "0" ]] &&
[[ $(docker inspect tomcat | jq -r '.[].HostConfig.Memory') != "0" ]] &&
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
#     "scenario": "06-limits.4", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


