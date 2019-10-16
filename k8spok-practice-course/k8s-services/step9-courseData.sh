#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####


kubectl create namespace headless
cat << EOF | kubectl apply -f-
apiVersion: v1
kind: Pod
metadata:
  labels:
    app: headless-pod
  name: headless-pod
  namespace: headless
spec:
  containers:
  - image: nginx
    name: headless-pod
    ports:
    - name: headless-port
      containerPort: 80
EOF

