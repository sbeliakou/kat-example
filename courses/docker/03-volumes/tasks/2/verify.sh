#!/bin/bash

[[ $(grep -c c10082 $(docker inspect c10082 | jq -r '.[].Mounts[].Source')/index.html) -ge 1 ]] &&
echo done