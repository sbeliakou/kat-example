
Create container and run it with requirements below.    
  

## Requirements:
- container name: **cpu-stress**;
- should run in **detach** mode;
- image: **alpine**;
- command: `md5sum /dev/urandom`
- container should have **20%** CPU limit. 
  

For self-cheking execute `docker stats`. You should see the following output (for example):  
```
[root@master /]# docker stats cpu-stress --no-stream
CONTAINER ID    NAME        CPU %    MEM USAGE / LIMIT   MEM %    NET I/O   BLOCK I/O    PIDS
946310f1ca97    cpu-stress  20.16%   572KiB / 1.941GiB   0.03%    0B / 0B   8.19kB / 0B  1
[root@master /]#
[root@master /]#
[root@master /]# docker stats cpu-stress --no-stream
CONTAINER ID    NAME        CPU %    MEM USAGE / LIMIT   MEM %    NET I/O   BLOCK I/O    PIDS
946310f1ca97    cpu-stress  19.72%   572KiB / 1.941GiB   0.03%    0B / 0B   8.19kB / 0B  1
[root@master /]#
```

## Documentation:
- https://docs.docker.com/config/containers/resource_constraints/
- https://docs.docker.com/engine/reference/commandline/stats/


---
