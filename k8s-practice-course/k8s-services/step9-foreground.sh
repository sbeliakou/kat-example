#!/bin/bash

clear && echo -n "Prepairing Environment " && until [[ $(kubectl get deployments -n trouble trouble-dep | awk 'FNR==2 {print $2}') == '3/3' ]]; do echo -n .; sleep 1; done; echo; history -c
