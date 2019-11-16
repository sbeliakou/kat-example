# Summary

We have introduced with Docker Networks.
Some useful commands you should capture:

```
docker network ls
docker network inspect bridge

docker run --net=none -d --name inNoneContainer busybox
docker run -d --network=host --name=nginx nginx

docker run -d -it --name=my_container_1 busybox
docker run -d -it --name=my_container_2 busybox
docker network inspect bridge | jq '.[].Containers'

docker network create < network_name >
docker network create <options> <network>
docker network create --help

docker run -d --name=inmybridge1 --net=my_bridge_network centos sleep infinity
```