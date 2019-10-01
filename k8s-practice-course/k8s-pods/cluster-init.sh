#!/bin/bash

kubeadm init --token abcdef.0123456789abcdef --token-ttl 0

API=$(hostname -I | cut -d' ' -f1)
ssh node01 "kubeadm join --token abcdef.0123456789abcdef --discovery-token-unsafe-skip-ca-verification $(API):6443"

mkdir ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"