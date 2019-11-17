
Create docker volume with `docker volume create ...`.  
Inspect created volume, find out **Mountpoint**.  
Go to the **Mountpoint** path and create **index.html** file with the following content:  
`My custom docker volume with name n32400_custom_volume`  

Run container which will use the created custom volume.

## Requirements:
- custom volume name: **n32400_custom_volume**;
- container should run in **detach** mode;
- container should expose **80** container port to **32400** host port;
- container should use **n32400_custom_volume** volume with the next container destination: `/usr/share/nginx/html`;
- container name: **n32400**;
- used image: **nginx**.  

For self-checking open **Checking** tab and enter **32400** port. You should see our note.
