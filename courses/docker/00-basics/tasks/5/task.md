# {{ .Current }}. Docker Introduction. Image Running

![](https://deploybot.com/assets/guides/_740x345_crop_center-center/docker-head-big@2x.png)

How can we know how many containers are running currently?
```
root@docker-host / CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                     NAMES
4973b45f98b5        my-first-app        "catalina.sh run"   4 minutes ago       Up 4 minutes        0.0.0.0:10080->8080/tcp   epic_pike
a807077b2d0c        my-first-app        "catalina.sh run"   5 minutes ago       Up 5 minutes        0.0.0.0:32768->8080/tcp   bold_varahamihira
```

How can we stop any of them?
```
root@docker-host / $ docker stop 4973b45f98b5
4973b45f98b5
```

Has this container been destroyed permanently?<br>Well, no.
```
root@docker-host / $ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS                        PORTS                     NAMES
4973b45f98b5        my-first-app        "catalina.sh run"   7 minutes ago       Exited (143) 11 seconds ago                             epic_pike
a807077b2d0c        my-first-app        "catalina.sh run"   7 minutes ago       Up 7 minutes                  0.0.0.0:32768->8080/tcp   bold_varahamihira
```

Can I run exactly this container again (to bring back from the "exited" state)?<br>Yes, of course!
```
root@docker-host / $ docker start 4973b45f98b5
4973b45f98b5
root@docker-host / $ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                     NAMES
4973b45f98b5        my-first-app        "catalina.sh run"   8 minutes ago       Up 8 seconds        0.0.0.0:10080->8080/tcp   epic_pike
a807077b2d0c        my-first-app        "catalina.sh run"   8 minutes ago       Up 8 minutes        0.0.0.0:32768->8080/tcp   bold_varahamihira
```

But how can we remove this container?
```
root@docker-host / $ docker stop 4973b45f98b5
4973b45f98b5
root@docker-host / $ docker rm 4973b45f98b5
4973b45f98b5
root@docker-host / $  docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                     NAMES
a807077b2d0c        my-first-app        "catalina.sh run"   12 minutes ago      Up 12 minutes       0.0.0.0:32768->8080/tcp   bold_varahamihira
```

But what if my container didn't respond? How can I kill it?
```
root@docker-host / $ docker kill a807077b2d0c
a807077b2d0c
root@docker-host / $ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS                        PORTS               NAMES
a807077b2d0c        my-first-app        "catalina.sh run"   15 minutes ago      Exited (137) 15 seconds ago                       bold_varahamihira
```

## Documentation:
- https://docs.docker.com/engine/reference/commandline/ps/
- https://docs.docker.com/engine/reference/commandline/stop/
- https://docs.docker.com/engine/reference/commandline/start/
- https://docs.docker.com/engine/reference/commandline/rm/

## Task:

Please stop all containers and remove them permanently