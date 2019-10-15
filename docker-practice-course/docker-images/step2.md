
Create Dockerfile and build image.

## Requirements:
- image name: **myweb**
- tag: **0.1**
- base image: **centos**
- label: `author=student`
- **httpd** webserver should be installed
- **index.html** default httpd page should contain your **"Name Lastname"**
- port **80** should be exposed

To check your image try to execute:  
`docker run -dt -p 32000:80 myweb:0.1`

Then go to **Checking** tab. You should see your **"Name Lastname"**  
(or curl **32000** port of **localhost**)
