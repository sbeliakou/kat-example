#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker inspect restarter_1 | jq -r '.[].HostConfig.RestartPolicy.Name') == "always" ]] && 
[[ $(docker inspect restarter_2 | jq -r '.[].HostConfig.RestartPolicy.Name') == "on-failure" ]] &&
[[ $(docker inspect restarter_2 | jq -r '.[].HostConfig.RestartPolicy.MaximumRetryCount') == "7" ]] &&
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
#     "scenario": "02-containers.4", 
#     "score": ${TASK_SCORE}
#   }
# }
# EOF


