
Build Custom Docker Images. Push it into your registry on Docker Hub.  


## Requirements:
- image name:tag : `ivanivanov/nginx:ubuntu`
- base image: **ubuntu**;
- **nginx** web server should be installed;
- container should expose **80** port;
- **nginx** web server should return image name e.g.`ivanivanov/nginx:ubuntu` as the only content on home page.  
  
  
For checking run the following command:  
`docker run -d -p 10091:80 --name nginx-ubuntu ivanivanov 

Check the service on `localhost:10091`, you should see correct message. 
  
If container works fine, pull your image in docker hub.  
After pullling check images has appeared in your Docker Hub repository.   
  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
