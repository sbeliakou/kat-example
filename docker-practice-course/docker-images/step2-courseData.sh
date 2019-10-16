#!/bin/bash

##### preparing for KUBERNETES ####






##### preparing for DOCKER ####


mkdir -p /data 
cat << 'EOF' > /data/Dockerfile
FROM nginx
EXPOSE 80
CMD echo "<head></head><body style=\"background-color:green;\"></body>">/usr/share/nginx/html/index.html && nginx -g 'daemon off;'
EOF
echo '<head></head><body style="background-color:blue;"></body>' > /data/index_blue.html
cat << 'EOF' > /data/Dockerfile_blue
FROM nginx
EXPOSE 80
COPY index_blue.html /usr/share/nginx/html/index.html
CMD nginx -g 'daemon off;'
EOF

