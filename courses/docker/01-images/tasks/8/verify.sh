#!/bin/bash

[[ $(docker image inspect single_app | jq -r '.[].Config.Cmd[]'| grep -c java) -eq 1 ]] &&
[[ $(docker image inspect multi_app | jq -r '.[].Config.Cmd[]'| grep -c java) -eq 1 ]] &&
[[ $(docker image inspect single_app | jq -r '.[].Size') -gt $(docker image inspect multi_app | jq -r '.[].Size') ]] &&
echo done