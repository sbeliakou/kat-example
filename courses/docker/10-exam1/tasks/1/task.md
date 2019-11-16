# {{ .Current }}. Description

The example demonstrates how to run Zabbix server with MySQL database support, Zabbix web interface based on the Nginx web server and Zabbix Java gateway.

## Task
Could you please create `docker-compose.yml` file based on the "docker run" commands listed below:

- **Zabbix Web Front End Service**
```
# docker run -t \
    --name zabbix-web-nginx-mysql \
    -e DB_SERVER_HOST="mysql-server" \
    -e MYSQL_DATABASE="zabbix" \
    -e MYSQL_USER="zabbix" \
    -e MYSQL_PASSWORD="zabbix_pwd" \
    -e MYSQL_ROOT_PASSWORD="root_pwd" \
    --link mysql-server:mysql \
    --link zabbix-server-mysql:zabbix-server \
    -p 80:80 \
    --restart unless-stopped \
    -d zabbix/zabbix-web-nginx-mysql:alpine-4.4.1
```

- **Zabbix Server Instance**
```
# docker run -t \
    --name zabbix-server-mysql \
    -e DB_SERVER_HOST="mysql-server" \
    -e MYSQL_DATABASE="zabbix" \
    -e MYSQL_USER="zabbix" \
    -e MYSQL_PASSWORD="zabbix_pwd" \
    -e MYSQL_ROOT_PASSWORD="root_pwd" \
    -e ZBX_JAVAGATEWAY="zabbix-java-gateway" \
    --link mysql-server:mysql \
    --link zabbix-java-gateway:zabbix-java-gateway \
    -p 10051:10051 \
    --restart unless-stopped \
    -d zabbix/zabbix-server-mysql:centos-4.4.1
```

- **MySQL Server Instance**
```
# docker run -t \
    --name mysql-server \
    --restart unless-stopped \
    -e MYSQL_DATABASE="zabbix" \
    -e MYSQL_USER="zabbix" \
    -e MYSQL_PASSWORD="zabbix_pwd" \
    -e MYSQL_ROOT_PASSWORD="root_pwd" \
    -d mysql:5.7 \
    --character-set-server=utf8 --collation-server=utf8_bin
```

- **Zabbix Java Gateway Service**
```
# docker run -t \
    --name zabbix-java-gateway \
    --restart unless-stopped \
    -d zabbix/zabbix-java-gateway:centos-4.4.1
```

## Notes:
- <img src="https://www.freeiconspng.com/uploads/warning-logo-png-symbols-warning-icon-17.png" width="18"> Please don't use obsolete options in the new `docker-compose.yml` file
- You should use volumes for persisting DB data

## Documentation:
- https://docs.docker.com/compose/
- https://docs.docker.com/compose/compose-file/
- https://docs.docker.com/compose/reference/overview/
- https://www.zabbix.com/documentation/current/manual/installation/containers

---