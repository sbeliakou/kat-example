#!/bin/bash

[[ $(docker image inspect pinger | jq -r '.[].ContainerConfig.Entrypoint[]') == "ping" ]] &&
[[ $(docker image inspect pinger | jq -r '.[].ContainerConfig.Cmd' | grep -c "dockerhub.com") -eq 1 ]] &&
echo done