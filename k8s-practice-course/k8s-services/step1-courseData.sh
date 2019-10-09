#!/bin/bash


kubectl create ns red

cat << EOF | kubectl apply -f-
apiVersion: v1
kind: Service
metadata:
  name: red-cluster-svc
  namespace: red
spec:
  type: ClusterIP
  selector:
    app: red-pod
  ports:
    - port: 80
EOF

cat << EOF | kubectl apply -f-
apiVersion: v1
kind: Service
metadata:
  name: red-node-svc
  namespace: red
spec:
  type: NodePort
  selector:
    app: red-pod
  ports:
    - port: 8080
      targetPort: 80
      nodePort: 31200
EOF

cat << EOF | kubectl apply -f-
apiVersion: v1
kind: Service
metadata:
  name: red-lb-svc
  namespace: red
spec:
  type: LoadBalancer
  selector:
    app: red-pod
  ports:
    - port: 80
      targetPort: 8000
EOF

