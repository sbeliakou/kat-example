#!/bin/bash

# Pull images in advance
# nohup crictl pull quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.26.1 &
nohup crictl pull k8s.gcr.io/metrics-server-amd64:v0.3.6 &>/dev/null &
nohup crictl pull k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1 &>/dev/null &
nohup crictl pull kindest/kindnetd:0.5.0 &>/dev/null &

ssh node01 'nohup crictl pull quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.26.1 &' &>/dev/null &
ssh node01 'nohup crictl pull k8s.gcr.io/metrics-server-amd64:v0.3.6 &' &>/dev/null &
ssh node01 'nohup crictl pull k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.1 &' &>/dev/null &
ssh node01 'nohup crictl pull kindest/kindnetd:0.5.0 &' &>/dev/null &
ssh node01 'kubeadm config images pull &' &>/dev/null &
ssh node01 'systemctl disable --now kubelet &' &>/dev/null &

exit 0