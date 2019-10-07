#!/bin/bash

wget -O /opt/main https://github.com/sbeliakou/kat-example/raw/master/k8s-practice-course/k8s-init/assets/main
chmod a+x /opt/main

cd /opt
nohup ./main &