#!/bin/bash

[ `kubectl get pods web -n webservices -o jsonpath='{.status.phase}'` == "Running" ] &&
[ `kubectl get pods web -n webservices -o jsonpath='{.spec.containers[0].image}'` == "nginx:1.16-alpine" ] &&
echo done