# {{ .Current }}. Docker-Compose introduction

![Docker compose](https://1.bp.blogspot.com/-zj9LQqh10LY/WOlW16xO0DI/AAAAAAAAAp8/Ye5Vk9YNssAyncZV5QEPOX2_ySQe7QPkwCLcB/s1600/compose.png)

Compose is a tool for defining and running multi-container Docker applications.  
The Compose file is a **YAML** file defining services, networks and volumes. The default path for a Compose file is `./docker-compose.yml`.  

Use Cases:
- Development environments
- Automated testing environments
- Single host deployments


## Working with Docker-Compose
- **Lifecycle**:
  - `create` - Create services
  - `start` - Start services
  - `stop` - Stop services
  - `restart` - Restart services
  - `kill` - Kill containers
  - `pause` - Pause services
  - `unpause` - Unpause services
  - `up [-d]` - Create and start containers [detached mode]
  - `down` - Stop and remove containers, networks, images, and volumes

- **Info, Logs**:
  - `ps` - List containers
  - `port` - Print the public port for a port binding
  - `top` - Display the running processes
  - `logs` - View output from containers

- **Build and Validate**:
  - `build` - Build or rebuild services
  - `config` - Validate and view the Compose file

- **Working with Registry**:
  - `pull` - Pull service images
  - `push` - Push service images.


## Documentation:
- https://docs.docker.com/compose/
- https://docs.docker.com/compose/compose-file/
- https://docs.docker.com/compose/reference/overview/

---