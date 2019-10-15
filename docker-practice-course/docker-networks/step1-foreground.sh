#!/bin/bash

clear && echo -n "Prepairing Environment " && until $(docker image ls | egrep '(gcr.io|weaveworks|quay.io|prom|katacoda)' >/dev/null 2>&1); do echo -n .; sleep 1; done; echo; history -c

