# Summary

We have introduced with Docker Networks.
Some useful commands you should capture:

```
docker run --rm --pid=container:web-conatiner centos ps

docker run -d -it --net=container:nginx sbeliakou/net-tools

docker run --rm --uts=host busybox hostname

docker run -d -m 300M --memory-reservation 100M centos sleep infinity

docker run -it -d --cpu-quota=25000 --name cpu0.25_1 alpine md5sum /dev/urandom
docker run -it -d --cpus=0.25 --name cpu0.25_2 alpine md5sum /dev/urandom
```
