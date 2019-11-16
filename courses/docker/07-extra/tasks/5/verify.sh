#!/bin/bash

[[ $(cat /etc/docker/daemon.json | jq -r '."experimental"') == "true" ]] &&
[[ $(cat /etc/docker/daemon.json | jq -r '."metrics-addr"'| grep -c :9323) -eq 1 ]] &&
[[ $(docker ps | grep -c "prom/prometheus") -ge 1 ]] &&
echo done