#!/bin/bash

[[ $(grep -c yellow $(docker inspect c10083 | jq -r '.[].Mounts[].Source')) -ge 1 ]] &&
echo done