#!/bin/bash

[ -f /.ok ] && echo done ||
shortname=$(echo ${STUDENT} | sed 's/^\(.\).* \(.*\)/\1\2/' | tr 'A-Z' 'a-z')
docker image ls | grep "/httpd *1.0" &&
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
#     "scenario": "01-images.3", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


