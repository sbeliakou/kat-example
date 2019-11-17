#!/bin/bash

[ -f /.ok ] && echo done ||
FLASK_OUTPUT=$(docker exec myflask flask --version)

[[ $(curl -s localhost:10088) =~ $(echo "${FLASK_OUTPUT}"| awk 'FNR==1'| cut -d' ' -f2) ]] &&
[[ $(curl -s localhost:10088) =~ $(echo "${FLASK_OUTPUT}"| awk 'FNR==2'| cut -d' ' -f2) ]] &&
[[ $(curl -s localhost:10088) =~ $(docker exec myflask uname -r) ]] &&
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
#     "scenario": "07-extra.7", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


