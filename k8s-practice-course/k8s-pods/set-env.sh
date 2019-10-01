#!/bin/bash 

while $(kubectl get componentstatus >/dev/null); do echo -n .; sleep 1; done; echo