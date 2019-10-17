#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####
:> /opt/launch-kubeadm.sh
ps -ef | grep /opt/launch-kubeadm.sh | grep -v grep | awk '{print $2}' | xargs -r kill -9
kubeadm reset -f || true
ps -ef | grep /usr/bin/kubelet | grep -v grep | awk '{print $2}' | xargs -r kill -9
systemctl stop kubelet
systemctl disable kubelet
docker image ls | egrep '(gcr.io|weaveworks|quay.io|prom|katacoda)' | awk '{print $3}' | xargs -r docker image rm
sudo iptables -t filter -F
sudo iptables -t filter -X
echo 'DOCKER_OPTS="-H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375 -H tcp://0.0.0.0:2345 -H fd:// --bip 172.18.0.1/24 --insecure-registry registry.test.training.katacoda.com:4567 --storage-driver overlay --exec-opt native.cgroupdriver=systemd"'>>/etc/default/docker
sudo rm /etc/docker/daemon.json
sudo systemctl daemon-reload
sudo systemctl restart docker


echo '<head></head><body style="background-color:blue;"></body>' > /root/index.html

