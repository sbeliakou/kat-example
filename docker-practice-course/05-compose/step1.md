
You have a command like this:
`docker run -d -e COURSE=compose -e MAINTAINER=ivanov --restart on-failure -p 10082:80 --name httpd_web httpd`  
  
  
## Task:
- Create `docker-compose.yml` file which reproduces the same service
- Run the stack from `docker-compose.yml` file


For self-cheking execute `docker-compose ps`. You should see the following output:  
```
root@docker-host / $ docker-compose ps
  Name          Command        State           Ports
------------------------------------------------------------
httpd_web   httpd-foreground   Up      0.0.0.0:10082->80/tcp
```

Please pay attention to the name of this container. It should be `httpd_web`

## Documentation:
- https://docs.docker.com/compose/
- https://docs.docker.com/compose/compose-file/
- https://docs.docker.com/compose/reference/overview/

---
