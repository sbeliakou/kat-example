#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker inspect busy | jq -r '.[].Config.User') == "1000:0" ]] && 
[[ $(docker inspect busy | jq -c '.[].Config.Env' | grep -c STUDENT) -eq 1 ]] && 
[[ $(docker inspect busy | jq -r '.[].Config.WorkingDir') == "/data" ]] && 
[[ $(docker inspect busy | jq -r '.[].HostConfig.GroupAdd[]') == "1200" ]] &&
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
#     "scenario": "02-containers.8", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


