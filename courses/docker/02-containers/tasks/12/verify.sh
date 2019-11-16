#!/bin/bash

[[ $(journalctl -ab CONTAINER_NAME=nginx_journal | grep $(docker ps | grep nginx_journal | awk '{print $1}') | wc -l) -ge 1 ]] &&
echo done