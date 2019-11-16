# {{ .Current }}. Docker Volumes

Create docker volume with `docker volume create ...`.  
Inspect created volume, find out **Mountpoint**.  
Go to the **Mountpoint** path and create **index.html** file with the following content:  
`My custom docker volume with name c10087_custom_volume`  
  
Run container which will use the created custom volume.

## Requirements:
- custom volume name: **c10087_custom_volume**;
- container should run in **detach** mode;
- container should expose **80** container port to **10087** host port;
- container should use **c10087_custom_volume** volume with the next container destination: `/usr/share/nginx/html`;
- container name: **c10087**;
- used image: **nginx**.  

For self-checking open `localhost:10087` in a new tab. You should see our note.  


## Documentation:
- https://docs.docker.com/storage/volumes/

---