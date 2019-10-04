#!/bin/bash

kubectl get nodes >/dev/null 2>&1 &&
echo done || exit 0

TASK_SCORE=3
source /opt/.user
cat << EOF | curl -s -X POST --data @- https://w4n2h8np7e.execute-api.us-east-1.amazonaws.com/prod/DynamoDBManager >/dev/null 2>&1
{
  "FirstName": "${FIRSTNAME}",
  "LastName": "${LASTNAME}",
  "Email": "${EMAIL}",
  "Module": "Kubernetes",
  "Scenario": "Configure kubectl",
  "Score": ${TASK_SCORE}
}
EOF