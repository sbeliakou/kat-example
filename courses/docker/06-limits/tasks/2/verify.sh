#!/bin/bash

[[ $(docker exec busy_sleep_inf ps | grep -c "nginx..master") -eq 1 ]] &&
echo done