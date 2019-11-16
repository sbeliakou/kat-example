#!/bin/bash

source /etc/venture

mkdir -p /task/${Current}/nginx_php/app
cat << 'EOF' > /task/${Current}/nginx_php/app/index.php
<?php
$servername = "db";
$username = "admin";
$password = "test";
$dbname = "database";

try {
    $conn = new PDO("mysql:host=$servername;dbname=database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully. Great work!";
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
?>
EOF

cat <<EOF > /task/${Current}/nginx_php/Dockerfile
FROM php:7.2-apache
RUN apt-get update
RUN docker-php-ext-install pdo pdo_mysql mysqli
EOF

cat <<EOF > /task/${Current}/nginx_php/docker-compose.yml
version: '3'

services:
  web:
    container_name: web
    hostname: web
    build: 
      context: /task/${Current}/nginx_php
    image: web_locally_build
    environment:
      - ALLOW_OVERRIDE=true
    ports:
      - "10087:80"
    volumes:
      - ./app:/var/www/html/

  db:
    container_name: db
    hostname: db
    image: mysql:5.7
    restart: always
    volumes:
      - ./mysql:/var/lib/mysql
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_USER: admin
      MYSQL_PASSWORD: test
      MYSQL_DATABASE: database
    ports:
      - "8889:3306"

EOF