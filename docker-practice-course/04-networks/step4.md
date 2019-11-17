
We have run two containers for you. But they can't talk to each other.  
```
[root@master /]# docker exec alpine_ping ping -c1 alpine_pong
ping: bad address 'alpine_pong'
```  

Please troubleshoot and fix it.  


## Requirements:
- Container **alpine_ping** should ping container **apline_pong** by its name;
- You mustn't change `/etc/hosts` file


For self-cheking try to ping these containers:  
```
[root@master /]# docker exec alpine_ping ping -c3 alpine_pong
PING alpine_pong (192.168.1.1): 56 data bytes
64 bytes from 192.168.1.1: seq=0 ttl=64 time=0.120 ms
64 bytes from 192.168.1.1: seq=1 ttl=64 time=0.588 ms
64 bytes from 192.168.1.1: seq=2 ttl=64 time=0.171 ms

--- alpine_pong ping statistics ---
3 packets transmitted, 3 packets received, 0% packet loss
round-trip min/avg/max = 0.120/0.293/0.588 ms
```

## Documentation:
- https://docs.docker.com/v17.09/engine/userguide/networking/#default-networks
- https://docs.docker.com/engine/reference/commandline/network/

---
