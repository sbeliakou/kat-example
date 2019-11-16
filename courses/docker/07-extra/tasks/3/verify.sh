#!/bin/bash

[[ $(curl -s 0.0.0.0:2375/info | jq -r '.Driver') == $(docker info 2>&1 | grep "Storage Driver"| cut -d' ' -f4) ]] &&
echo done