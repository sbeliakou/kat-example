#!/bin/bash

clear && echo -n "Prepairing Environment " && until $([ -f "/data/data_file" ]); do echo -n .; sleep 1; done; echo; history -c
