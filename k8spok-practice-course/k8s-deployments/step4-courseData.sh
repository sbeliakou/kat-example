#!/bin/bash

        
kubectl create ns lemon &&
cat << EOF | kubectl apply -n lemon -f-
apiVersion: apps/v1
kind: Deployment
metadata:
  namespace: lemon
  labels:
    run: lemon
  name: lemon
spec:
  replicas: 0
  selector:
    matchLabels:
      run: lemon
  template:
    metadata:
      labels:
        run: lemon
    spec:
      containers:
      - image: nginx
        name: lemon
EOF

