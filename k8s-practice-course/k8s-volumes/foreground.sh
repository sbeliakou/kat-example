#!/bin/bash 

clear && echo -n "Prepairing kubelet" && 
	until $(kubelet --version >/dev/null 2>&1); do echo -n .; sleep 1; done; echo "\nWaiting for master to join" &&
	until $(kubectl get componentstatus > /dev/null 2>&1); do echo -n .; sleep 1; done; echo "\nWaiting for master to get ready" &&
	while $(kubectl get node master -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}' == "False" ]); do echo -n .; sleep 1; done; echo; history -c; clear; echo "Time to rock!"
