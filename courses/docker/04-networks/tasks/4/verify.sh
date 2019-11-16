#!/bin/bash

source /etc/venture

[ -n "$(docker network ls | grep ${StudentShort})" ] &&
[ "$(docker network inspect ${StudentShort}-bridge | jq -r '.[].Driver')" == "bridge" ] &&
[ -n "$(docker network inspect ${StudentShort}-bridge | jq -r '.[].IPAM.Config[]| select(.IPRange == "123.45.1.0/24")')" ] &&
[ -n "$(docker network inspect ${StudentShort}-bridge | jq -r '.[].IPAM.Config[]| select(.Subnet == "123.45.1.0/24")')" ] &&
[ "$(docker network inspect ${StudentShort}-bridge | jq -r '.[].Labels.createdby')" == "${StudentName}_${StudentSurname}" ] &&
echo done
