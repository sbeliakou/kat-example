#!/bin/bash

kubectl create ns orange

cat << EOF | kubectl apply -n orange -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  creationTimestamp: null
  labels:
    run: orange
  name: orange
spec:
  replicas: 2
  selector:
    matchLabels:
      run: orange
  strategy: {}
  template:
    metadata:
      creationTimestamp: null
      labels:
        run: orange
    spec:
      containers:
      - image: nginx
        name: orange
        resources: {}
      initContainers:
      - image: busybox:3521
        command:
        - sleep
        - "1O"
status: {}
EOF
