#!/bin/bash

[[ $(docker inspect nginx-health | jq -r '.[].State.Health.Status') == "healthy" ]] && 
[[ $(docker inspect tomcat-health | jq -r '.[].State.Health.Status') == "healthy" ]] && 
echo done