#!/bin/bash

[[ $(cat /etc/group | grep -c "docker:.:[0-9]*.*admin") -ge 1 ]] &&
echo done