# {{ .Current }}. Logs

As you remember **docker logs** shows the command's **STDOUT** and **STDERR**. Using this infomation solve the next task.  

You're given failed docker container with name **nginx_wrong**. Find out where mistake occured and fix it.  

For your information - container was tried to start with the next command:  
`docker run -dt -p 10091:80 -v /tmp/index.html:/usr/share/nginx/html/index.html --name nginx_wrong -v /etc/nginx/nginx.conf:/etc/nginx/nginx.conf  nginx:alpine`  
  
For self-checking open `localhost:10091` in new tab. You should see the message the container was fixed.  
  
## Documentation:
- https://docs.docker.com/engine/reference/commandline/logs/

---