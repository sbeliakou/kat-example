#!/bin/bash

clear && echo -n "Prepairing Environment " && until [[ $(kubectl get pods yellow -o jsonpath='{.status.phase}') == "Running" ]]; do echo -n .; sleep 1; done; echo; history -c

