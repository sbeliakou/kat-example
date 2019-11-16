#!/bin/bash

[[ $(docker images | grep -c my-first-app) -eq 1 ]] &&
echo done