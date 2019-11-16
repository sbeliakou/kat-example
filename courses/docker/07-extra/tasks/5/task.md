# {{ .Current }}. Docker Daemon Metrics

Expose Docker native metrics interface.  

## Requirements:
- docker daemon should expose Prometheus-compatible metrics on port 9323


## Check
Run prometeus with the next command:
```
docker run -d --name=my-prometheus \
		--net=host \
		--restart=always \
		-v /data/prometheus.yml:/etc/prometheus/prometheus.yml \
		prom/prometheus
```
### Use Prometheus
Verify that the Docker target is listed at `http://localhost:9090/targets/`.  
![target](https://docs.docker.com/config/thirdparty/images/prometheus-targets.png)

Create a graph. Click the **Graphs** link in the Prometheus UI. Choose a metric from the combo box to the right of the **Execute** button (e.g. `engine_daemon_container_states_containers`), and click **Execute**.<br>
The screenshot below shows the graph for `engine_daemon_network_actions_seconds_count`.
![](https://docs.docker.com/config/thirdparty/images/prometheus-graph_idle.png)



## Documentation:
- https://docs.docker.com/config/daemon/
- https://docs.docker.com/engine/reference/commandline/dockerd/
- https://docs.docker.com/config/thirdparty/prometheus/

---