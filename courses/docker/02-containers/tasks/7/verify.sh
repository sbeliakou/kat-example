#!/bin/bash

[[ $(docker exec batman cat /data/student) ]] &&
echo done