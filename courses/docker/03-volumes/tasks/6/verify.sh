#!/bin/bash


## To check

[[ $(grep -c c10087 $(docker volume inspect c10087_custom_volume | jq -r '.[].Mountpoint')/*) -ge 1 ]] &&
echo done