#!/bin/bash

[[ $(docker run c8j11 java -version 2>&1 | grep -c "openjdk.*11") -ge 1 ]] &&
[[ $(docker run c7j180 java -version 2>&1 | grep -c "openjdk.*1.8.0") -ge 1 ]] &&
echo done