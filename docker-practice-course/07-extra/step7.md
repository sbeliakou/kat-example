
Containerize Python-FLASK application developed in Python LAB Module.  

## Requirements:
- container and image name: `myflask`;
- container should run in detach mode;
- container should publish exposed port to the `10088` host port; 
- Response page should display following data (at least):
  - Python Version it is running on
  - Flask Server version
  - Systems OS Name, Release Version, Family Name
  - Kernel Version
  - Container build date/time
  - Page generation date/time in zones UTC0, Europe/Minsk
  - System Host Name, IP address
  - Student (Developer) Name
  - Custom Environment Variable PARAMETER
  - Container Life time


## Check
You should get the output (**as example**):
```
root@docker-host /python $ curl localhost:10088
Python version: 2.7.17 (default, Oct 23 2019, 23:58:07)  
Flask version: 1.1.1 
Kernel version: 3.10.0-1062.4.1.el7.x86_64 
...
```


## Documentation:
- https://www.palletsprojects.com/p/flask/
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/

---
