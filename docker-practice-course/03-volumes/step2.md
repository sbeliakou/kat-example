
You are given `/root/index.html` file.  
Run **nginx** container in detach mode with mounting **index.html** into container.  

## Requirements:
- container should run in **detach** mode;
- container should mount `/root/index.html` file on host to `/usr/share/nginx/html/index.html` on container;
- container should expose **80** container port to **10083** host port;
- container name: **c10083**;
- used image: **nginx**.  

For self-checking open `localhost:10083` in a new tab. You should see yellow page.  

## Documentation:
- https://docs.docker.com/storage/volumes/

---
