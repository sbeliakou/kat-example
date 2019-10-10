#!/bin/bash

DIR=$(mktemp -d -p /var/tmp)

wget -O ${DIR}/main https://github.com/sbeliakou/kat-example/raw/master/assets/main
wget -O ${DIR}/form.html https://github.com/sbeliakou/kat-example/raw/master/assets/form.html
chmod a+x ${DIR}/main

cd ${DIR}/
nohup ./main &