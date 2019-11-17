
We have got `/task/nginx_php` with `docker-compose` and a few other files. They simply create all resources as following:
- User-defined Network
- Custom Volume
- Service (Container) with necessary options

## Task:

Please inspect these files and create all resources with `docker run ...` commands. Use the same names as in `docker-compose.yml` file.

### Checking
For self-checking try to make request to **web** container:
```
root@docker-host /task/nginx_php $  curl localhost:10087
Connected successfully. Great work!
``` 
