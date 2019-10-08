#!/bin/bash

# kubeadm init --token abcdef.0123456789abcdef --token-ttl 0

# mkdir ~/.kube
# cp /etc/kubernetes/admin.conf ~/.kube/config

# kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
# 

/opt/launch-kubeadm.sh
ssh -o StrictHostKeyChecking=no node01 "kubeadm join --token 96771a.f608976060d16396 --discovery-token-unsafe-skip-ca-verification $(hostname -I | cut -d' ' -f1):6443"
