#!/bin/bash

clear && echo -n "Prepairing Environment " && sleep 5 && until [[ $(kubectl get pods -n headless headless-pod -o jsonpath='{.status.phase}') == 'Running' ]]; do echo -n .; sleep 1; done; echo; history -c

