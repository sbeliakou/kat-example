
Run container with creating volume. Do the requirements below.

## Requirements:
- container should run in **detach** mode;
- container should expose **80** container port to **10082** host port;
- container should create volume with the next container destination: `/usr/share/nginx/html`;
- container name: **c10082**;
- image name: **nginx**.  


Inspect the container and find the created volume path on the host:  
`docker inspect c10082 | jq -r '.[].Mounts[].Source'`  
Go to the path and discover `index.html` file.  
Change this `index.html` file:  
`echo 'This is c10082 container' > index.html`.  

For self-cheking open in new tab `localhost:10082`. You should see our note.

## Documentation:
- https://docs.docker.com/storage/volumes/

---
