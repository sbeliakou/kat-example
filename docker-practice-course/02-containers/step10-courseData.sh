#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####


mkdir -p /etc/nginx
cat << 'EOF' > /etc/nginx/nginx.conf
user  nginx;
worker_processes  auto;

error_log  /var/log/nginx/error.log warn;
pid        /var/run/nginx.pid;

events {
    worker_connections  -1024;
}

http {
    include       /etc/nginx/mime.types;
    default_type  application/octet-stream;

    log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
                      '$status $body_bytes_sent "$http_referer" '
                      '"$http_user_agent" "$http_x_forwarded_for"';

    access_log  /var/log/nginx/access.log  main;

    sendfile        on;
    #tcp_nopush     on;

    keepalive_timeout  65;

    #gzip  on;

    include /etc/nginx/conf.d/*.conf;
}
EOF
echo 'Container nginx_wrong was fixed! You are cool!' > /tmp/index.html
docker run -dt -p 10091:80 -v /tmp/index.html:/usr/share/nginx/html/index.html --name nginx_wrong -v /etc/nginx/nginx.conf:/etc/nginx/nginx.conf  nginx:alpine

