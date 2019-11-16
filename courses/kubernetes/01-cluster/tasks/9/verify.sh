#!/bin/bash

kubectl get nodes node01 -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}' | grep True &&
ssh node01 'systemctl list-unit-files' | grep enabled | grep kubelet.service