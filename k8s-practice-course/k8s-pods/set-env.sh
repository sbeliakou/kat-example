~/.launch.sh

while $(ps -ef | grep [k]ubeadm >/dev/null); do echo alive; sleep 1; done