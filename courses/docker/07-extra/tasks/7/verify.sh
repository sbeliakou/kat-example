#!/bin/bash

anchore-cli --url http://localhost:8228/v1 --u admin --p foobar image list | grep "centos.*analyzed" &&
anchore-cli --url http://localhost:8228/v1 --u admin --p foobar image list | grep "nginx.*analyzed" &&
anchore-cli --url http://localhost:8228/v1 --u admin --p foobar image list | grep "postgres.*analyzed" &&
echo done
