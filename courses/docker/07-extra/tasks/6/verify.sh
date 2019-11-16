#!/bin/bash

[[ $(docker ps | grep -c aevolume_) -ge 6 ]] &&
echo done
