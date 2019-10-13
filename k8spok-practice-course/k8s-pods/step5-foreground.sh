#!/bin/bash

clear && echo -n "Preparing Environment " && until $(kubectl get componentstatus >/dev/null 2>&1); do echo -n .; sleep 1; done; echo; history -c

