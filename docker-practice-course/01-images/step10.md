
Build Custom Docker Images. Push it into your registry on Docker Hub.


## Requirements:
- image name:tag : `ivanivanov/nginx:centos`
- base image: **centos:7**;
- **nginx** web server should be installed;
- container should expose **80** port;
- **nginx** web server should return image name e.g.`ivanivanov/nginx:centos` as the only content of home page.  

  
After building run the following command:<br>
`docker run -d -p 10090:80 --name nginx-centos ivanivanov<br>

Check the service on `localhost:10090`, you should see correct message. 
  
If container works fine, pull your image in docker hub.  
After pullling check images has appeared in your Docker Hub repository.   
  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
