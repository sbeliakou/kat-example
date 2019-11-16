# {{ .Current }}. Custom image (tomcat on ubuntu)

Build Custom Docker Images. Push it into your registry on Docker Hub.


## Requirements:
- new image name: `{{ .StudentName }}{{ .StudentSurname }}/tomcat:{{ .Current }}-ubuntu`
- base image: **ubuntu**;
- container should expose **8080** port;  
- **tomcat** app server should be installed and started.  
  

For checking run the following command:  
`docker run -d -p 10094:8080 --name tomcat-ubuntu-{{ .Current }} {{ .StudentName }}{{ .StudentSurname }}/tomcat:{{ .Current }}-ubuntu`  
Open in your browser `localhost:10094`, you should see tomcat default page.  
  
If container works fine, pull your image in docker hub.  
After pullling check images has appeared in your Docker Hub repository.  
  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---