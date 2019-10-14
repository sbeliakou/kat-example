#!/bin/bash

clear && echo -n "Prepairing" &&
until $(kubectl get pv pv-5 > /dev/null 2>&1); do echo -n .; sleep 1; done; echo; history -c; clear; echo "Time to rock!"

