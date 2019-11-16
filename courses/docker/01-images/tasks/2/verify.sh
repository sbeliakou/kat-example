#!/bin/bash

[[ $(docker ps | egrep -c "color/blue:2.6.*0.0.0.0:10082->80/tcp") -eq 1 ]] &&
[[ $(docker ps | egrep -c "color/green:1.0.*0.0.0.0:10081->80/tcp") -eq 1 ]] &&
echo done