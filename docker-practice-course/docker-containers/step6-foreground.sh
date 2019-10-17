#!/bin/bash

clear && echo -n "Prepairing Environment " && until $(docker ps | egrep 'batman' >/dev/null 2>&1); do echo -n .; sleep 1; done; echo; history -c

