#!/bin/bash

[[ $(docker ps | grep -c "color/green:1.0.*0.0.0.0:.....->80/tcp") -ge 1 ]] &&
echo done