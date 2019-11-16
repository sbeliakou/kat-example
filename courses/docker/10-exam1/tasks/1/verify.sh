#!/bin/bash

COMPOSE_VERSION=$(docker-compose version | awk 'NR==1{print$3}' | tr -d ,)

[[ $(docker inspect zabbix-web-nginx-mysql | jq -r '.[].Config.Labels."com.docker.compose.version"') == ${COMPOSE_VERSION} ]] &&
[[ $(docker inspect zabbix-server-mysql | jq -r '.[].Config.Labels."com.docker.compose.version"') == ${COMPOSE_VERSION} ]] &&
[[ $(docker inspect mysql-server | jq -r '.[].Config.Labels."com.docker.compose.version"') == ${COMPOSE_VERSION} ]] &&
[[ $(docker inspect zabbix-java-gateway | jq -r '.[].Config.Labels."com.docker.compose.version"') == ${COMPOSE_VERSION} ]] &&
docker inspect zabbix-web-nginx-mysql | jq -r '.[].Config.Tty'         | grep true &&
docker inspect zabbix-web-nginx-mysql | jq -r '.[].Config.Env[]'       | grep DB_SERVER_HOST &&
docker inspect zabbix-web-nginx-mysql | jq -r '.[].Config.Env[]'       | grep MYSQL_DATABASE &&
docker inspect zabbix-web-nginx-mysql | jq -r '.[].Config.Env[]'       | grep MYSQL_USER &&
docker inspect zabbix-web-nginx-mysql | jq -r '.[].Config.Env[]'       | grep MYSQL_PASSWORD &&
docker inspect zabbix-web-nginx-mysql | jq -r '.[].Config.Env[]'       | grep MYSQL_ROOT_PASSWORD &&
docker inspect zabbix-web-nginx-mysql | jq -r '.[].NetworkSettings.Ports."80/tcp"[].HostPort' | grep 80 &&
docker inspect zabbix-web-nginx-mysql | jq -r '.[].HostConfig.RestartPolicy.Name' | grep unless-stopped &&
docker inspect zabbix-server-mysql 	  | jq -r '.[].Config.Tty'         | grep true &&
docker inspect zabbix-server-mysql    | jq -r '.[].Config.Env[]'       | grep DB_SERVER_HOST &&
docker inspect zabbix-server-mysql    | jq -r '.[].Config.Env[]'       | grep MYSQL_DATABASE &&
docker inspect zabbix-server-mysql    | jq -r '.[].Config.Env[]'       | grep MYSQL_USER &&
docker inspect zabbix-server-mysql    | jq -r '.[].Config.Env[]'       | grep MYSQL_PASSWORD &&
docker inspect zabbix-server-mysql    | jq -r '.[].Config.Env[]'       | grep MYSQL_ROOT_PASSWORD &&
docker inspect zabbix-server-mysql    | jq -r '.[].Config.Env[]'       | grep ZBX_JAVAGATEWAY &&
docker inspect zabbix-server-mysql    | jq -r '.[].NetworkSettings.Ports."10051/tcp"[].HostPort' | grep 10051 &&
docker inspect zabbix-server-mysql    | jq -r '.[].HostConfig.RestartPolicy.Name' | grep unless-stopped &&
docker inspect mysql-server           | jq -r '.[].Config.Tty'         | grep true &&
docker inspect mysql-server           | jq -r '.[].Config.Env[]'       | grep MYSQL_DATABASE &&
docker inspect mysql-server           | jq -r '.[].Config.Env[]'       | grep MYSQL_USER &&
docker inspect mysql-server           | jq -r '.[].Config.Env[]'       | grep MYSQL_PASSWORD &&
docker inspect mysql-server           | jq -r '.[].Config.Env[]'       | grep MYSQL_ROOT_PASSWORD &&
docker inspect mysql-server           | jq -r '.[].Config.Cmd[]'       | grep character-set-server &&
docker inspect mysql-server           | jq -r '.[].Config.Cmd[]'       | grep collation-server &&
docker inspect mysql-server           | jq -r '.[].HostConfig.RestartPolicy.Name' | grep unless-stopped &&
docker inspect zabbix-java-gateway    | jq -r '.[].HostConfig.RestartPolicy.Name' | grep unless-stopped &&
echo done