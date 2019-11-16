#!/bin/bash

[[ $(docker ps | grep -c "color/green:1.0.*0.0.0.0:10084->80/tcp") -eq 1 ]] &&
echo done