#!/bin/bash

[[ $(cat /etc/docker/daemon.json | jq -r '."live-restore"') == "true" ]] &&
echo done