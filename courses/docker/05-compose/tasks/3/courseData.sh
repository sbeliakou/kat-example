#!/bin/bash

source /etc/venture

mkdir -p /task/${Current}
cat << 'EOF' > /task/${Current}/nginx_env
COURSE=compose
MAINTAINER=${StudentShort}
TASK=${Current}
EOF

sed -i 's/${StudentShort}/'${StudentShort}'/' /task/${Current}/nginx_env
sed -i 's/${Current}/'${Current}'/' /task/${Current}/nginx_env

cat << 'EOF' > /task/${Current}/index.html
This is the nginx_web container started by docker-compose!
EOF

