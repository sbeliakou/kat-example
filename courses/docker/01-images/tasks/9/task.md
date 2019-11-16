# {{ .Current }}. Multi-stage build. Extreme

You are given `Dockerfile` and `web.go` (simple webserver written on golang) files in `/data/go` directory.  

Build Dockerfile with tag `go_simple` and run it:  
`docker run -d -p 10089:8080 --name=go_simple go_simple`  

Make a few request and examine logs of container. You should see the following output:
```
root@docker-host /data/go $ curl localhost:10089
hostname: aa4760c7fada
ip address: 172.18.0.2
root@docker-host /data/go $ curl localhost:10089
hostname: aa4760c7fada
ip address: 172.18.0.2
root@docker-host /data/go $ curl localhost:10089
hostname: aa4760c7fada
ip address: 172.18.0.2
root@docker-host /data/go $ docker logs go_simple
2019/11/08 20:15:45 Getting request from 172.18.0.1:43898
2019/11/08 20:15:51 Getting request from 172.18.0.1:43902
2019/11/08 20:15:52 Getting request from 172.18.0.1:43906
```
<br>

In previous step we made multi-stage build and used **openjdk:8-jre-alpine** as base image of 2nd stage.  
One of advantages of **go** applications is compilation opportunity. We can make binary for various platforms and run it without any assitant environment such as e.g. **java**.  
Moreover we can even use **scratch** as base image of 2nd stage. We will get the container with only web server application (there won't `bash` even!). Let's do this!

Edit Dockerfile:
- give 1st stage (golang image) name **builder**;
- build binary of webserver with: `GOOS=linux GOARCH=386 go build -a ./web.go`
- add 2nd build stage:
  - base image: **scratch**;
  - should copy artifact from 1st build stage (using alias **builder**);
  - should expose 8080 port;
  - should run copied from 1st stage artifact.  


Build edited Dockerfile with tag **go_multi** and run it:  
`docker run -d -p 10090:8080 --name=go_multi go_multi`  

Make a few request and examine logs of container. You should see the following output:
```
root@docker-host /data/go $ curl localhost:10090
hostname: 780fe7f604fb
ip address: 172.18.0.3
root@docker-host /data/go $ curl localhost:10090
hostname: 780fe7f604fb
ip address: 172.18.0.3
root@docker-host /data/go $ curl localhost:10090
hostname: 780fe7f604fb
ip address: 172.18.0.3
root@docker-host /data/go $ docker logs go_multi
2019/11/08 20:24:52 Getting request from 172.18.0.1:49256
2019/11/08 20:24:53 Getting request from 172.18.0.1:49260
2019/11/08 20:24:54 Getting request from 172.18.0.1:49264
```
<br>

You can appreciate multi-stage build benefits again - just compare sizes of **go_simple** and **go_multi** images! Incredible! 
```
root@docker-host /data/go $ docker images | grep ^go_
go_multi            latest              2c12b0056b89        2 minutes ago       6.57MB
go_simple           latest              49a2d61d6557        11 minutes ago      803MB
```
  
  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://medium.com/@tonistiigi/advanced-multi-stage-build-patterns-6f741b852fae
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
