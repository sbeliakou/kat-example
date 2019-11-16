#!/bin/bash

[[ $(grep -c c10084 $(docker inspect c10084 | jq -r '.[].Mounts[].Source')/index.html) -ge 1 ]] &&
echo done