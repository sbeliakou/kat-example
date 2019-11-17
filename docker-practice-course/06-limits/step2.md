
You're given the running container with name **nginx-net**.<br>
Run another container in **nginx-net** NET Namespace.  
  

## Requirements:
- container name: **net-tools**;
- should run in **detach** mode;
- image: **sbeliakou/net-tools**;
- **net-tools** should run in **nginx-net** container NET Namespace.  
  

For self-cheking execute commands in **net-tools** container. You should see the following output:  
```
[root@master /]# docker exec nginx-net hostname -i
172.17.0.4
[root@master /]# docker exec net-tools hostname -i
172.17.0.4
[root@master /]# docker exec net-tools netstat -tlpn
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      -
[root@master /]# docker exec net-tools curl -sIL localhost
HTTP/1.1 200 OK
Server: nginx/1.17.5
...
```

## Documentation:
- https://docs.docker.com/engine/reference/run/#pid-settings---pid
- https://docs.docker.com/engine/reference/run/#uts-settings---uts
- https://docs.docker.com/engine/reference/run/#ipc-settings---ipc
- https://docs.docker.com/engine/reference/run/#network-settings
- https://docs.docker.com/engine/reference/run/#runtime-constraints-on-resources


---
