#!/bin/bash

[[ $(docker image inspect mybusybox | jq -r '.[].ContainerConfig.WorkingDir') == '/data' ]] &&
[[ $(docker run mybusybox ls | grep -c test_file) -eq 2 ]] &&
[[ $(docker image inspect mybusybox | jq -r '.[].ContainerConfig.Env[]' | grep -c MAINTAINER) -ge 1 ]] &&
echo done