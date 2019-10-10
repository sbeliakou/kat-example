#!/bin/bash

DIR=$(mktemp -d -p /var/tmp)
wget -O ${DIR}/main https://github.com/sbeliakou/kat-example/raw/master/assets/main
wget -O ${DIR}/form.html https://github.com/sbeliakou/kat-example/raw/master/assets/form.html
chmod a+x ${DIR}/main

cd ${DIR}/
nohup ./main &


:> /opt/launch-kubeadm.sh
ps -ef | grep /opt/launch-kubeadm.sh | grep -v grep | awk '{print $2}' | xargs -r kill -9
kubeadm reset -f || true
ps -ef | grep /usr/bin/kubelet | grep -v grep | awk '{print $2}' | xargs -r kill -9
systemctl stop kubelet
systemctl disable kubelet
docker image ls | egrep '(gcr.io|weaveworks|quay.io|prom)' | awk '{print $3}' | xargs -r docker image rm
