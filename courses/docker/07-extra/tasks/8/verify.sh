#!/bin/bash

FLASK_OUTPUT=$(docker exec myflask flask --version)

[[ $(curl -s localhost:10088) =~ $(echo "${FLASK_OUTPUT}"| awk 'FNR==1'| cut -d' ' -f2) ]] &&
[[ $(curl -s localhost:10088) =~ $(echo "${FLASK_OUTPUT}"| awk 'FNR==2'| cut -d' ' -f2) ]] &&
[[ $(curl -s localhost:10088) =~ $(docker exec myflask uname -r) ]] &&
echo done
