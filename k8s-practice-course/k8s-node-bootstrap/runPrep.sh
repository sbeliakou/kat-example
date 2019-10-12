#!/bin/bash

/opt/launch-kubeadm.sh

ssh -o StrictHostKeyChecking=no node01 "mkdir -p /etc/kubernetes/pki"
scp -o StrictHostKeyChecking=no -p /etc/kubernetes/pki/ca.crt node01:/etc/kubernetes/pki