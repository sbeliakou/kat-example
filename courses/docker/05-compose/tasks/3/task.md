# {{ .Current }}. Docker-compose file (ENV file, ports, volumes)

You're given the following command:  
`docker run -d --env-file /task/{{ .Current }}/nginx_env -p 10083:80 -p 50000:50000 -v /task/{{ .Current }}/index.html:/usr/share/nginx/html/index.html --log-driver journald --name nginx_web nginx:1.16`  
  
  
## Requirements:
- create docker-compose file and up stack (container in our case) with `docker-compose`;
- repeat the given `docker run` command in **docker-compose** file.  


For self-cheking execute `docker-compose ps`. You should see the following output:  
```
[root@master /]# docker-compose ps
  Name            Command          State                        Ports
------------------------------------------------------------------------------------------
nginx_web   nginx -g daemon off;   Up      0.0.0.0:50000->50000/tcp, 0.0.0.0:10083->80/tcp
```

## Documentation:
- https://docs.docker.com/compose/
- https://docs.docker.com/compose/compose-file/
- https://docs.docker.com/compose/reference/overview/

---