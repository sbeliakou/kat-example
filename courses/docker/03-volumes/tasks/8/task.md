# Summary

We have introduced with Docker Volumes.
Some useful commands you should capture:

```
docker run -d -p 80:80 -v /usr/share/nginx/html nginx
docker run -d -p 80:80 -v nginx_data:/usr/share/nginx/html nginx

docker run -d --name html_data -v /usr/share/nginx/html busybox sleep infinity
docker run -d --volumes-from html_data -p 81:80 nginx

docker volume create --name http-custom-data
docker volume ls
docker volume inspect http-custom-data
```