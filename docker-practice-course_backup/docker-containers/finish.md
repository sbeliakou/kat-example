# It's Done!

Some useful commands to know:

docker run -d myhttpd:1.0

docker run -P -d myhttpd:1.0
docker run -d -p 8081:80 --name h8081 myhttpd:1.0

docker run -d --restart=always --name sleeper centos sleep 5

docker run centos cat /etc/redhat-release
docker run -it centos bash

docker stop h8082
docker rm 014e5efa5ca9
docker rm $(docker stop $(docker ps -a -q))

docker run --user 1000:0 jenkins id
docker run --group-add 123 jenkins id

docker run --workdir /var/jenkins_home jenkins pwd
docker run -it -e MYVAR="My Variable" centos env | grep MYVAR

docker run -d --label app=web1 nginx

</pre>
