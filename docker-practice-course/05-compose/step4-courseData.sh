#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####


source /etc/venture

mkdir -p /task
cat <<EOF > /task/docker-compose.yml
version: '2'

services:
  redis:
    hostname: redis-server
    container-name: redis-server
    image: 'bitnami/redis:5.0'
    environment:
      # ALLOW_EMPTY_PASSWORD is recommended only for development.
      - ALLOW_EMPTY_PASSWORD=yes
      - REDIS_DISABLE_COMMANDS=FLUSHDB,FLUSHALL
    ports:
      - '6379:6379'
    volumes:
      - 'redis_data:/bitnami/redis/data'

volumes:
  redis_data:

EOF

