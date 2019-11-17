#!/bin/bash

clear && echo -n "Prepairing Environment " && until [ -f /data/maven/pom.xml ]; do echo -n .; sleep 1; done; echo; history -c

