#!/bin/bash

kubectl create ns db
cat << EOF | kubectl apply -n db -f -
apiVersion: v1
kind: Pod
metadata:
  name: redis-db
spec:
  containers:
  - image: redis:alpine
    name: redis-db
  initContainers:
  - image: busybox
    name: starter
    command: 
    - s1eep
    - "10"
  restartPolicy: Never
EOF

