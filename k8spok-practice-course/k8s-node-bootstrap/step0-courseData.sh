#!/bin/bash

##### preparing for KUBERNETES ####
kubeadm init --token abcdef.0123456789abcdef --token-ttl 0
mkdir ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
ssh -o StrictHostKeyChecking=no node01 "kubeadm join --token abcdef.0123456789abcdef --discovery-token-unsafe-skip-ca-verification $(hostname -I | cut -d' ' -f1):6443"
kubectl taint nodes --all node-role.kubernetes.io/master-



ping -c1 node01 || ( echo "Something went wrong, sorry" && shutdown -r now )

#/opt/launch-kubeadm.sh
kubectl delete configmap -n kube-public cluster-info
kubectl delete secret -n kube-system bootstrap-token-96771a

ssh -o StrictHostKeyChecking=no node01 "mkdir -p /etc/kubernetes"
# ssh -o StrictHostKeyChecking=no node01 'echo KUBELET_KUBECONFIG_ARGS=\"--bootstrap-kubeconfig=/etc/kubernetes/bootstrap-kubelet.conf --kubeconfig=/etc/kubernetes/kubelet.conf --cgroup-driver=systemd\"> /etc/default/kubelet'
# ssh -o StrictHostKeyChecking=no node01 'echo KUBELET_CONFIG_ARGS=\"\">> /etc/default/kubelet'
# ssh -o StrictHostKeyChecking=no node01 'systemctl daemon-reload'

ssh -o StrictHostKeyChecking=no node01 "rm -rf /etc/systemd/system/kubelet.service.d"



##### preparing for DOCKER ####



