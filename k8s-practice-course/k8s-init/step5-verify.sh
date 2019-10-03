#!/bin/bash

kubectl get node node01 --show-labels | grep 'node-role.kubernetes.io/worker=' >/dev/null &&
echo done