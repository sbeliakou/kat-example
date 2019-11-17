#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####


source /etc/venture

mkdir -p /task
cat << 'EOF' > /task/nginx_env
COURSE=compose
MAINTAINER=${StudentShort}
TASK=${Current}
EOF

sed -i 's/${StudentShort}/'${StudentShort}'/' /task/nginx_env
sed -i 's/'${Current}'/' /task/nginx_env

cat << 'EOF' > /task/index.html
This is the nginx_web container started by docker-compose!
EOF

