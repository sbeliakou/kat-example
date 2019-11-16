# Summary

We have introduced with Docker Networks.
Some useful commands you should capture:

```
docker-compose up -d
docker-compose ps

docker-compose exec mariadb mysqladmin -ppassword version

docker-compose images

docker-compose logs mariadb

docker-compose restart mariadb
docker-compose stop mariadb

docker-compose down
docker-compose down --volumes

docker-compose build
docker-compose up -d
docker-compose up -d --build
docker-compose up -d --no-build
docker-compose up -d --no-cache
```