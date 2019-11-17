#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####


docker rm -f busybox_1 busybox_2 busybox_3 busybox_4 &

mkdir -p /data 
cat << 'EOF' > /data/Dockerfile
FROM nginx
EXPOSE 80
CMD echo "<head></head><body style=\"background-color:green;\"></body>">/usr/share/nginx/html/index.html && nginx -g 'daemon off;'
EOF

