#!/bin/bash

##### preparing for KUBERNETES ####






##### preparing for DOCKER ####


kubectl create ns webservices &&
kubectl run web --image=nginx:alpine-1.16 --generator=run-pod/v1 -n webservices

