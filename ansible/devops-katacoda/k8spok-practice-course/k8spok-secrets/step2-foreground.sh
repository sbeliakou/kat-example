#!/bin/bash

clear && echo -n "Prepairing Environment " && until $(kubectl get secrets -n safe recipe5 >/dev/null 2>&1); do echo -n .; sleep 1; done; echo; history -c

