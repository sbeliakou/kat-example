# {{ .Current }}. Docker 101. Dockerfile

![](https://deploybot.com/assets/guides/_740x345_crop_center-center/docker-head-big@2x.png)

Docker can build images automatically by reading the instructions from a `Dockerfile`. A `Dockerfile` is a text document that contains all the commands a user could call on the command line to assemble an image.

Create a new directory `/tomcat` and go into it.  
In `/tomcat` directory create `Dockerfile` with the following content: 
```
FROM tomcat:jdk11-openjdk-slim
EXPOSE 8080
CMD ["catalina.sh", "run"]
```
The meaning of these commands will be explained later, but if to be consice:
- the `FROM` instruction specifies the Parent Image from which you are building;
-  with `EXPOSE` instruction we inform Docker that the container listens on the specified network ports at runtime;
- finally, the `CMD` instruction sets the command to be executed when running the image, in our case we run tomcat app server.



## Documentation:
- https://docs.docker.com/

---