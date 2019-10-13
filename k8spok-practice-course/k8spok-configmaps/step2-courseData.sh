#!/bin/bash

        


mkdir /data &&
echo "IP=$(hostname -I | awk '{print $1}')" > /data/data_file &&
echo "$(cat /etc/os-release | awk 'FNR==1')" >> /data/data_file &&
echo "$(cat /etc/os-release | awk 'FNR==2')" >> /data/data_file &&
echo "$(cat /etc/os-release | awk 'FNR==5')" >> /data/data_file

