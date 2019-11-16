# {{ .Current }}. Cgroups: Memory Limits

Create container and run it with requirements below.    
  

## Requirements:
- container name: **tomcat**;
- should run in **detach** mode;
- image: **tomcat:jdk8-openjdk-slim**;
- container should have **100 Mb** memory limit;
- container should use unlimited swap limit;
- container should reserve **50 Mb** of memory.  
  

For self-cheking execute `docker stats`. You should see the following output:  
```
[root@master /]# docker stats tomcat --no-stream
CONTAINER ID    NAME     CPU %    MEM USAGE / LIMIT   MEM %    NET I/O   BLOCK I/O    PIDS
800bb51cf0ae    tomcat   0.73%    65.55MiB / 100MiB   65.55%   0B / 0B   160MB / 0B   43

```

## Documentation:
- https://docs.docker.com/config/containers/resource_constraints/
- https://docs.docker.com/engine/reference/commandline/stats/

---