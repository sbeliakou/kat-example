# {{ .Current }}. Docker 101. Creating Docker Images

![](https://deploybot.com/assets/guides/_740x345_crop_center-center/docker-head-big@2x.png)

We have `Dockerfile` with building instructions.<br>

Let's build new image. Execute in `/tomcat` directory the following command:<br>
`docker build -t my-first-app .` Please pay attention to `.` at the and of the command.

You should get the next output:
```
root@docker-host /tomcat $ docker build -t my-first-app .
Sending build context to Docker daemon  2.048kB
Step 1/3 : FROM tomcat:jdk11-openjdk-slim
jdk11-openjdk-slim: Pulling from library/tomcat
...
...
Successfully built 7226dfe29946
Successfully tagged my-first-app:latest
```


We've got our own image. To check it execute `docker images` and inspect our created image:
```
root@docker-host /tomcat $ docker images
REPOSITORY    TAG     IMAGE ID      CREATED         SIZE
my-first-app  latest  7226dfe29946  31 seconds ago  420MB
```


## Documentation:
- https://docs.docker.com/

---