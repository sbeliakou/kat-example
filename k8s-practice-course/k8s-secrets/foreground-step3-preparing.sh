#!/bin/bash

clear && echo -n "Prepairing Environment " && until $([ -f "/data/username_file" ] && [ -f "/data/password_file" ]); do echo -n .; sleep 1; done; echo; history -c
