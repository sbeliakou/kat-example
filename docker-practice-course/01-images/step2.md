
Create Dockerfile and build image.

## Requirements:
- new image name(:tag): `myweb:0.1`
- base image: `centos:7`
- label: `AUTHOR=ivanov`
- **httpd** webserver should be installed
- **index.html** default httpd page should contain `'Student: Ivan Ivanov'`
- port **80** should be exposed

Run your image by executing:  
`docker run -d -p 10083:80 myweb:0.1`

Please open `(:10083)` tab and check if all is good.

## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
