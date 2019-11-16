#!/bin/bash

[[ $(grep -c busybox $(docker inspect c10085 | jq -r '.[].Mounts[].Source')) -eq 1 ]] && 
[[ $(grep -c busybox $(docker inspect c10086 | jq -r '.[].Mounts[].Source')) -eq 1 ]] &&
echo done