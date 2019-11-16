#!/bin/bash

cp $0 /tmp/

[ $(docker info --format '{{.Containers}}') -eq 0 ]