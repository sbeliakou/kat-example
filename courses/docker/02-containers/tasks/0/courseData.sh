#!/bin/bash


docker run -d --name busybox_1 busybox sleep infinity &
docker run -d --name busybox_2 -p 10080:80 busybox sleep infinity &
docker run -d --name busybox_3 busybox sleep 5000 &
docker run -d --name busybox_4 busybox sleep -1 &