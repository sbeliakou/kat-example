
Run container with the requirements below.  

## Requirements:
- container should run in **detach** mode;
- container should expose **80** container port to **10084** host port;
- container should create volume with name **c10084_data** and the next container destination: `/usr/share/nginx/html`;
- container name: **c10084**;
- used image: **nginx**.  
  

Go to the `/var/lib/docker/volumes/c10084_data/_data` directory and find `index.html` file.  
Change this file: `echo 'This is the c10084 container' > index.html`.  

For self-checking open `localhost:10084` in a new tab. You should see our note.  


## Documentation:
- https://docs.docker.com/storage/volumes/

---
