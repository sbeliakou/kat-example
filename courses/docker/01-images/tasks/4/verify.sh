#!/bin/bash

shortname=$(echo ${STUDENT} | sed 's/^\(.\).* \(.*\)/\1\2/' | tr 'A-Z' 'a-z')
docker image ls | grep "${shortname}/httpd *1.0"