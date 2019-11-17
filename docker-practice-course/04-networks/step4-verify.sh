#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker exec alpine_ping ping -c1 alpine_pong) ]] &&
[ -z "$(docker exec -it alpine_ping cat /etc/hosts | grep alpine_pong)" ] &&
[ -z "$(docker exec -it alpine_pong cat /etc/hosts | grep alpine_ping)" ] &&
echo done  &&
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
    "scenario": "04-networks.4", 
    "score": ${TASK_SCORE}
  }
}
EOF


