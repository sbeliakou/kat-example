
You have your own **myweb:0.1** image but you have to change the tag.  

## Requirements:
- change docker image tag:
  - from: **myweb:0.1**
  - to: **(first letter of name + Lastname)/httpd:1.0**  
    (etc. sbeliakou/httpd:1.0)  

Inspect docker images, you should see image with new tag.  

Let's run the new image:  
- stop **myweb:0.1** container: `docker stop $(docker ps -lq)`
- inspect **Checking** tab, you should see katakoda's connecting page 
- run the new image: `docker run -dt -p 32000:80 sbeliakou/httpd:1.0`
- inspect **Checking** tab again, now you should see your **"Name Lastname"**
