#!/bin/bash

ping -c1 node01 || ( echo "Something went wrong, sorry" && shutdown -r now )

/opt/launch-kubeadm.sh
kubectl delete configmap -n kube-public cluster-info
kubectl delete secret -n kube-system bootstrap-token-96771a

ssh -o StrictHostKeyChecking=no node01 "mkdir -p /etc/kubernetes"
ssh -o StrictHostKeyChecking=no node01 'echo KUBELET_KUBECONFIG_ARGS=\"--bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --cgroup-driver=systemd\"> /etc/default/kubelet'
ssh -o StrictHostKeyChecking=no node01 'echo KUBELET_CONFIG_ARGS=\"\">> /etc/default/kubelet'
ssh -o StrictHostKeyChecking=no node01 'systemctl daemon-reload'