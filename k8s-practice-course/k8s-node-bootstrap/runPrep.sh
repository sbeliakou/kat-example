#!/bin/bash

/opt/launch-kubeadm.sh

ssh -o StrictHostKeyChecking=no node01 "mkdir -p /etc/kubernetes"
ssh -o StrictHostKeyChecking=no node01 'echo KUBELET_KUBECONFIG_ARGS="--bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --cgroup-driver=systemd"> /etc/default/kubelet'
ssh -o StrictHostKeyChecking=no node01 'systemctl daemon-reload'