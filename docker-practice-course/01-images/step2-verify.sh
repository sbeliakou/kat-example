#!/bin/bash

[ -f /.ok ] && echo done ||
shortname=$(echo ${STUDENT} | sed 's/^\(.\).* \(.*\)/\1\2/' | tr 'A-Z' 'a-z')

[[ $(docker ps | egrep -c "myweb:0.1.*0.0.0.0:10083->80/tcp") -eq 1 ]] &&
curl -s localhost:10083 | grep -i "Student: ${STUDENT}" && 
docker image inspect myweb:0.1 | jq -r '.[].Config.Labels[] | grep "AUTHOR" &&
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
    "scenario": "01-images.2", 
    "score": ${TASK_SCORE}
  }
}
EOF


