
Build Custom Docker Images. Push it into your registry on Docker Hub.


## Requirements:
- new image name: `ivanivanov/nginx:alpine`
- base image: **alpine**;
- **nginx** web server should be installed;
- container should expose **80** port;
- **nginx** web server should return image name e.g.`ivanivanov/nginx:alpine` as default page.  
  
  
For checking run the following command:  
`docker run -d -p 10092:80 --name nginx-alpine ivanivanov 

Check the service on `localhost:10092`, you should see correct message. 
  
If container works fine, pull your image in docker hub.  
After pullling check images has appeared in your Docker Hub repository.  
  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
