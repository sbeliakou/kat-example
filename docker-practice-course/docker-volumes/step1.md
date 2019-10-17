
Run container with creating volume. Do the requirements below.

## Requirements:
- container should run in **detach** mode;
- container should expose **80** container port to **32150** host port;
- container should create volume with the next container destination: `/usr/share/nginx/html`;
- container name: **n32150**;
- image name: **nginx**.  


Inspect the container and find the created volume path on the host: `docker inspect n32150 | jq -r '.[].Mounts[].Source'`  
Go to the path and discover `index.html` file.  
Change this `index.html` file: `echo 'This is n32150 container' > index.html`.  


Go to the **Checking** tab and enter **32150** port. You should see our note.
