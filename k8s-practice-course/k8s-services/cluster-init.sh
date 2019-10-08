#!/bin/bash

kubeadm init --token abcdef.0123456789abcdef --token-ttl 0

mkdir ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
ssh -o StrictHostKeyChecking=no node01 "kubeadm join --token abcdef.0123456789abcdef --discovery-token-unsafe-skip-ca-verification $(hostname -I | cut -d' ' -f1):6443"

kubectl taint nodes --all node-role.kubernetes.io/master-


# for service module

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

