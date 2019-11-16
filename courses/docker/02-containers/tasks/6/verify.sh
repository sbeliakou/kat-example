#!/bin/bash

[[ $(grep -c 'Alpine Linux' /root/alpine-release) -eq 2 ]] &&
echo done