
Run the container with the requirements below.

## Requirements:
- image: `nginx`;
- container name: `nginx_journal`;
- container should run in **detach** mode;
- container should send logs to journalctl;
- container should expose **80** port to the **10092** host port.    

After container creating make 5-10 requests to the web server: `curl localhost:10092`   

For self-checking try to execute `journalctl -ab CONTAINER_NAME=nginx_journal`. You should see the following output (as example):  
```
[root@master /]# journalctl -ab CONTAINER_NAME=nginx_journal
WARNING: terminal is not fully functional
-- Logs begin at Fri 2019-11-01 20:06:25 UTC, end at Fri 2019-11-01 21:00:08 UTC. --
Nov 01 21:00:03 master 4e7b9c7bcb7e[27]: 172.17.0.1 - - [01/Nov/2019:21:00:03 +0000] "GET / HTTP/1.1" 200 612 "-"
Nov 01 21:00:04 master 4e7b9c7bcb7e[27]: 172.17.0.1 - - [01/Nov/2019:21:00:04 +0000] "GET / HTTP/1.1" 200 612 "-"
Nov 01 21:00:04 master 4e7b9c7bcb7e[27]: 172.17.0.1 - - [01/Nov/2019:21:00:04 +0000] "GET / HTTP/1.1" 200 612 "-"
Nov 01 21:00:05 master 4e7b9c7bcb7e[27]: 172.17.0.1 - - [01/Nov/2019:21:00:05 +0000] "GET / HTTP/1.1" 200 612 "-"
Nov 01 21:00:06 master 4e7b9c7bcb7e[27]: 172.17.0.1 - - [01/Nov/2019:21:00:06 +0000] "GET / HTTP/1.1" 200 612 "-"
Nov 01 21:00:07 master 4e7b9c7bcb7e[27]: 172.17.0.1 - - [01/Nov/2019:21:00:07 +0000] "GET / HTTP/1.1" 200 612 "-"
Nov 01 21:00:08 master 4e7b9c7bcb7e[27]: 172.17.0.1 - - [01/Nov/2019:21:00:08 +0000] "GET / HTTP/1.1" 200 612 "-"
lines 1-8/8 (END)
```
  
  
## Documentation:
- https://docs.docker.com/engine/reference/run/
- https://docs.docker.com/engine/reference/commandline/logs/

---
