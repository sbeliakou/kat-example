
You have **color/green:1.0** image. The image runs **_nginx_** webserver, but you can't reach this one, because of exposed port(s) isn't published.

## Requirements:
- run container with **color/green:1.0** image in **detach** mode;
- publish exposed port to random port.  

For self-checking inspect the container is running; find out published port(s); then go to the **Checking** tab and enter published port.  
You should see **_green_** page.
