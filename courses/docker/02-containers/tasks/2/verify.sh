#!/bin/bash

[[ $(docker ps | grep -c "color/green:1.0") -ge 1 ]] &&
echo done