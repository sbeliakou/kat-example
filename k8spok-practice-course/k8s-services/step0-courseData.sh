#!/bin/bash

##### preparing for KUBERNETES ####
kubeadm init --token abcdef.0123456789abcdef --token-ttl 0
mkdir ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
ssh -o StrictHostKeyChecking=no node01 "kubeadm join --token abcdef.0123456789abcdef --discovery-token-unsafe-skip-ca-verification $(hostname -I | cut -d' ' -f1):6443"
kubectl taint nodes --all node-role.kubernetes.io/master-


##### preparing for DOCKER ####



