#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####


mkdir /data &&
echo "superhacker.$(hostname -I | awk '{print $1}')" > /data/username_file &&
echo "verystrongpassword.$(hostname -I | awk '{print $1}')" > /data/password_file

