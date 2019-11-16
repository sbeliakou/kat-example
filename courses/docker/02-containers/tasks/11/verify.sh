#!/bin/bash

[[ $(curl -s localhost:10091 | grep -c nginx_wrong) -eq 1 ]] &&
echo done