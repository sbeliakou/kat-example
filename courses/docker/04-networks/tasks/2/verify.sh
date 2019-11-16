#!/bin/bash

[[ $(curl -s localhost | grep -c "It works") -eq 1 ]] &&
echo done