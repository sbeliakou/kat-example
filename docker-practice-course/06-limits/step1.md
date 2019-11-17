
You're given the running container with name **nginx_pid**.  
Run another container with `sleep infinity` command in **nginx_pid** container PID Namespace.  
  

## Requirements:
- container name: **busy_sleep_inf**;
- should run in **detach** mode;
- image: **busybox**;
- command: `sleep infinity`;
- you should see `sleep infinity` process from **busy_sleep_inf** container in running processes in **nginx_pid** container.  
  

For self-cheking execute `ps` in **busy_sleep_inf** container. You should see the following output:  
```
[root@master /]# docker exec busy_sleep_inf ps
PID   USER     TIME  COMMAND
    1 root      0:00 nginx: master process nginx -g daemon off;
    7 101       0:00 nginx: worker process
    8 root      0:00 sleep infinity
   30 root      0:00 ps

```

## Documentation:
- https://docs.docker.com/engine/reference/run/#pid-settings---pid
- https://docs.docker.com/engine/reference/run/#uts-settings---uts
- https://docs.docker.com/engine/reference/run/#ipc-settings---ipc
- https://docs.docker.com/engine/reference/run/#network-settings
- https://docs.docker.com/engine/reference/run/#runtime-constraints-on-resources


---
