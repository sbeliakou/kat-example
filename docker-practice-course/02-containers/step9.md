
Run two container with health checking and other the requirements below.

## Requirements:
- **Container #1**:
  - container should run in **detach** mode;
  - container name: **nginx-health**;
  - container should have its own health checks (settings - up to you);
  - image name: **nginx**;

- **Container #2**:
  - container should run in **detach** mode;
  - container name: **tomcat-health**;
  - container should have its own health checks (settings - up to you);
  - image name: **tomcat**;
  
  
For self-checking inspect any container:  
```
### health probe with a success
[root@master /]# docker inspect tomcat-health | jq -r '.[].State.Health'
{
  "Status": "healthy",
  "FailingStreak": 0,
  "Log": [
    {
      "Start": "2019-11-03T12:56:05.595320495+03:00",
      "End": "2019-11-03T12:56:07.002057789+03:00",
      "ExitCode": 0,
      "Output": "HTTP/1.1 200 \r\nContent-Type: text/html;charset=UTF-8\r\nTransfer-Encoding: chunked\r\nDate: Sun, 03 Nov 2019 09:56:06 GMT\r\n\r\n"
    },
......

### failed health probe 
root@master /]# docker inspect tomcat-health | jq -r '.[].State.Health'
{
  "Status": "unhealthy",
  "FailingStreak": 5,
  "Log": [
    {
      "Start": "2019-11-03T13:06:14.825155222+03:00",
      "End": "2019-11-03T13:06:15.96559207+03:00",
      "ExitCode": 1,
      "Output": ""
    },
....
```

---
