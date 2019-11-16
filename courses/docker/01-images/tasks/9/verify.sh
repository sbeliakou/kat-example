#!/bin/bash

[[ $(docker image inspect go_simple | jq -r '.[].Config.Cmd[]'|grep -c web.go) -eq 1 ]] &&
[[ $(docker image inspect go_multi | jq -r '.[].Config.Cmd|length') -eq 1 ]] &&
[[ $(docker image inspect go_simple | jq -r '.[].Size') -gt $(docker image inspect go_multi | jq -r '.[].Size') ]] &&
echo done
