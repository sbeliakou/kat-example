#!/bin/bash

DIR=$(mktemp -d -p /var/tmp)

wget -O ${DIR}/main https://github.com/sbeliakou/kat-example/raw/master/assets/main
wget -O ${DIR}/form.html https://github.com/sbeliakou/kat-example/raw/master/assets/form.html
chmod a+x ${DIR}/main

wget -O /lib/systemd/system/main.service https://github.com/sbeliakou/kat-example/raw/master/assets/main.service
sed -i "s@TMPDIR@${DIR}@" /lib/systemd/system/main.service
systemctl enable main.service
systemctl start main.service

#{% if course_content.course_id != "k8s-init" %}
kubeadm init --token abcdef.0123456789abcdef --token-ttl 0

mkdir ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config

kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
ssh -o StrictHostKeyChecking=no node01 "kubeadm join --token abcdef.0123456789abcdef --discovery-token-unsafe-skip-ca-verification $(hostname -I | cut -d' ' -f1):6443"

kubectl taint nodes --all node-role.kubernetes.io/master-

#{% endif %}


