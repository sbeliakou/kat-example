#!/bin/bash


kubectl get nodes node01 -o json | jq '.metadata.labels."node-role.kubernetes.io/worker"' | grep '""'