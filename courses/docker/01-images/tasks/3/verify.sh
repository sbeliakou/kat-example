#!/bin/bash

shortname=$(echo ${STUDENT} | sed 's/^\(.\).* \(.*\)/\1\2/' | tr 'A-Z' 'a-z')

[[ $(docker ps | egrep -c "myweb:0.1.*0.0.0.0:10083->80/tcp") -eq 1 ]] &&
curl -s localhost:10083 | grep -i "Student: ${STUDENT}" && 
[[ $(docker image inspect myweb:0.1 | jq -r '.[].Config.Labels."AUTHOR"') == "${shortname}" ]] &&
echo done