#!/bin/bash

[ -f /.ok ] && echo done ||
source /etc/venture

[ -n "$(docker network ls | grep ${StudentShort})" ] &&
[ "$(docker network inspect ${StudentShort}-bridge | jq -r '.[].Driver')" == "bridge" ] &&
[ -n "$(docker network inspect ${StudentShort}-bridge | jq -r '.[].IPAM.Config[]| select(.IPRange == "123.45.1.0/24")')" ] &&
[ -n "$(docker network inspect ${StudentShort}-bridge | jq -r '.[].IPAM.Config[]| select(.Subnet == "123.45.1.0/24")')" ] &&
[ "$(docker network inspect ${StudentShort}-bridge | jq -r '.[].Labels.createdby')" == "${StudentName}_${StudentSurname}" ] &&
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
#     "scenario": "04-networks.3", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


