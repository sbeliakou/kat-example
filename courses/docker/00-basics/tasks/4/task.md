# {{ .Current }}. Docker 101. Running Containers from Images

![](https://deploybot.com/assets/guides/_740x345_crop_center-center/docker-head-big@2x.png)

Let's run a container from the image we have just created.<br>
Execute the command as follows:
```
docker run -d -p 10080:8080 my-first-app
```

where:
- `-d` (also `--detach`) means "run container in background and print container ID"
- `-p 10080:8080` (also `--publish`) means "publish a container’s `8080` port to the `10080` host port
- `my-first-app` our custom image we have just created


You should get the next output:
```
root@docker-host / $ docker run -d -p 10080:8080 my-first-app
40bc8617a2c7f1491953469123d326c3934be5fe100127fcf3fbfe1e94d3450f
root@docker-host / $
```

Now brose service on `docker-host:10080` tab. There should be Tomcat's default page. 


If you don't want to specify exact host port (10080), you can make docker choose the first available port from the range of 32768 to 65535. Please run it with `-P`:
```
docker run -d -P my-first-app
```

And check the tab "docker-host:32768"

## Documentation:
- https://docs.docker.com/engine/reference/commandline/run/

## Answer following questions: