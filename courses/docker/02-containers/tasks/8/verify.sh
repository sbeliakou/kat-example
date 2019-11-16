#!/bin/bash

[[ $(docker ps | egrep -c "(batman|restarter_1)") == '0' ]] &&
echo done