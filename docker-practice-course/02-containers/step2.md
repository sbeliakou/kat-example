
So, we have our container up and running. But it doesn't serve any service because of no ports exposed.

## Requirements:
- run container with **color/green:1.0** image in **detach** mode;
- publish exposed port to random port.  

For self-checking inspect the container is running; find out published port(s) (e.g. `32768`); then open in new tab `localhost:32768` URL.  
You should see **_green_** page.  

## Documentation:
- https://docs.docker.com/engine/reference/run/

---
