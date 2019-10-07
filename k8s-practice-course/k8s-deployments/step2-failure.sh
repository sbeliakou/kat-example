#!/bin/bash

kubectl create ns orange

cat << EOF | kubectl apply -n orange -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  namespace: ornge
  labels:
    run: orange
  name: orange
spec:
  replicas: 2
  selector:
    matchLabels:
      run: orange
  template:
    metadata:
      labels:
        run: orange
    spec:
      containers:
      - image: nginx
        name: orange
      initContainers:
      - image: busybox:latest-alpine
        command:
        - sleep
        - "1O"
EOF
