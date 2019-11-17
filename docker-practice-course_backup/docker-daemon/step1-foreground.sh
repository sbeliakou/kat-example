#!/bin/bash

clear && echo -n "Prepairing Environment " && while $(docker image ls | egrep '(gcr.io|weaveworks|quay.io|prom|katacoda)' >/dev/null 2>&1); do echo -n .; sleep 1; done; echo; history -c

