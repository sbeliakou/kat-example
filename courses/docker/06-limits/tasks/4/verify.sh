#!/bin/bash

docker inspect busy-host | jq '.[].Config.Image' | grep busybox &&
docker inspect busy-host | jq -j '.[].Config.Cmd[]' | grep sleepinfinity &&
[[ $(docker inspect busy-host | jq -r '.[].HostConfig.UTSMode') == "host" ]] &&
echo done
