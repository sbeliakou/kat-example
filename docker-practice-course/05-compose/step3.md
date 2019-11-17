
Create docker-compose file to run Nginx and Tomcat. Tomcat service should run in Nginx Network
namespace. Forward http requests to Tomcat (upstream 127.0.0.1:8080)
  
  
## Requirements:
- nginx container should expose **80** port to the **10084** host port;
- request to the nginx should return tomcat default page;
- nginx container:
  - container name: **nginx**;
  - image: **nginx:alpine**;  
- tomcat container:
  - container name: **tomcat**;
  - image: **tomcat:jdk8-openjdk-slim**.
  

For self-cheking execute `docker-compose ps`. You should see the following output:  
```
[root@master /]# docker-compose ps
 Name          Command          State           Ports
-------------------------------------------------------------
nginx    nginx -g daemon off;   Up      0.0.0.0:10084->80/tcp
tomcat   catalina.sh run        Up
[root@master /]#
[root@master /]# curl -s localhost:10084 | grep title
        <title>Apache Tomcat/8.5.47</title>
[root@master /]#
```
  
  
## Documentation:
- https://docs.docker.com/compose/
- https://docs.docker.com/compose/compose-file/
- https://docs.docker.com/compose/reference/overview/

---
