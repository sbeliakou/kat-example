#!/bin/bash


sudo systemctl stop docker
:> /opt/launch-kubeadm.sh
ps -ef | grep /opt/launch-kubeadm.sh | grep -v grep | awk '{print $2}' | xargs -r kill -9
kubeadm reset -f || true
ps -ef | grep /usr/bin/kubelet | grep -v grep | awk '{print $2}' | xargs -r kill -9
systemctl stop kubelet
systemctl disable kubelet
docker image ls | egrep '(gcr.io|weaveworks|quay.io|prom|katacoda)' | awk '{print $3}' | xargs -r docker image rm
sudo iptables -t filter -F
sudo iptables -t filter -X
sudo systemctl restart docker



