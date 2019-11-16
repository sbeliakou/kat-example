# {{ .Current }}. Custom image (tomcat on alpine)

Build Custom Docker Images.  


## Requirements:
- new image name: `{{ .StudentName }}{{ .StudentSurname }}/tomcat:{{ .Current }}-alpine`
- base image: **alpine**;
- container should expose **8080** port;  
- **tomcat** app server should be installed and started.  
  

For checking run the following command:  
`docker run -d -p 10095:8080 --name tomcat-alpine-{{ .Current }} {{ .StudentName }}{{ .StudentSurname }}/tomcat:{{ .Current }}-alpine`  
Check the service on `localhost:10095`, you should see tomcat default page.  
  
If container works fine, pull your image in docker hub.  
After pullling check images has appeared in your Docker Hub repository.  
  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/

---