#!/bin/bash

nn=$(echo ${STUDENT} | tr 'A-Z' 'a-z' | sed 's/\(.\).* /\1/')
n1=$(echo ${STUDENT} | tr 'A-Z' 'a-z' | sed 's/ .*//')
n2=$(echo ${STUDENT} | tr 'A-Z' 'a-z' | sed 's/.* //')

kubectl get ns cucumber-prod > /dev/null 2>&1 &&
[ "$(kubectl get ns 2>/dev/null | grep potato-dev)" == "" ] && 
kubectl get ns $nn &&
kubectl get ns $nn --show-labels | grep name=$n1 &&
kubectl get ns $nn --show-labels | grep surname=$n2