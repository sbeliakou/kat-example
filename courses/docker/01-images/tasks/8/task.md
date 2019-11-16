# {{ .Current }}. Multi-stage build

You are given `/data/maven` folder with content.  

Build Dockerfile with tag **single_app** and run it:  
`docker run single_app`  

You should see the following output:
```
root@docker-host /data/maven $ docker run single_app
The current local time is: 19:00:00.443
Hello world! Jabed Bangali
```
<br>

Edit Dockerfile:
- give 1st stage (maven image) name **builder**;
- add 2nd build stage:
  - base image: **openjdk:8-jre-alpine**;
  - should copy artifact from 1st build stage (using alias **builder**);
  - should run copied from 1st stage artifact.  


Build edited Dockerfile with tag **multi_app** and run it:  
`docker run multi_app`  

You should see the same output:
```
root@docker-host /data/maven $ docker run multi_app
The current local time is: 19:05:06.140
Hello world! Jabed Bangali
```
<br>

You can appreciate multi-stage build benefits - just inspect size of **single_app** and **multi_app** images! 
  
  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://medium.com/@tonistiigi/advanced-multi-stage-build-patterns-6f741b852fae
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---