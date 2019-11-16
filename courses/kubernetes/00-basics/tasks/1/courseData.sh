#!/bin/bash

# kill -CONT $(ps -ef | grep 'bash -i -l' | grep -v grep | awk '{print $2}')

# done_file=/var/tmp/.4laIFpHkmG/cluster_reset
# mkdir ${done_file%/*}

# function log() {
#   echo -e -n "\e[32m$@\e[0m" > /dev/pts/1
# }

# function points() {
#   while true; do
#     kill -STOP $(ps -ef | grep 'bash -i -l' | grep -v grep | awk '{print $2}')
#     log ". "
#     sleep 1
#   done
# }

# if [ ! -f ${done_file} ]; then
#   log "\nWe're working on a new set up. Please wait for a while\n"
#   points &

#   until kubectl get node master -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}' | grep True; do sleep 1; done

#   kill $!
#   log "\nAll done from our side. Please hit 'Enter' key and take this stuff over.\n"
#   kill -CONT $(ps -ef | grep 'bash -i -l' | grep -v grep | awk '{print $2}')

#   touch $done_file
# fi

until kubectl get node master -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}' | grep True; do sleep 1; done
kubectl taint node master node-role.kubernetes.io/master-
kubectl label node master node-role.kubernetes.io/worker=

fruits=(apricot currant mango peach avocado guava lemon papaya orange tamarind)

n=$(cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | head --bytes 1)
ns1="${fruits[n]}-$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1  | tr 'A-Z' 'a-z')"
kubectl create ns ${ns1}
kubectl label ns ${ns1} secret="santa-doesnt-like-this-fruit"

n=$(cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | head --bytes 1)
ns2="${fruits[n]}-$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1  | tr 'A-Z' 'a-z')"
kubectl create ns ${ns2}
kubectl label ns ${ns2} secret="santa-likes-this-fruit"

