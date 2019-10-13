#!/bin/bash


kubectl create namespace trouble
kubectl run trouble-dep --namespace=trouble --image=nginx --restart=Always --replicas=3 --labels="app=trouble"
cat << EOF | kubectl apply -f-
apiVersion: v1
kind: Service
metadata:
  name: trouble-svc
  namespace: trouble
spec:
  type: NodePort
  ports:
    - nodePort: 32200
      protocol: TCP
      port: 80
EOF

