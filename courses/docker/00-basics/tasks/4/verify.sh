#!/bin/bash

[[ $(curl -s localhost:10080 | grep -c "title.Apache.Tomcat") -eq 1 ]] &&
[[ $(curl -s localhost:32768 | grep -c "title.Apache.Tomcat") -eq 1 ]]