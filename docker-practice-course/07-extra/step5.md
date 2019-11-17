
Install Anchore Engine Server. Verify installation.  

## Requirements:
- anchore engine should be installed;
- wait until the core vulnerability data feeds have completed before proceeding 


## Check
Run prometeus with the next command:
```
root@docker-host ~/aevolume $ docker-compose ps
             Name                            Command                  State               Ports         
--------------------------------------------------------------------------------------------------------
aevolume_anchore-db_1             docker-entrypoint.sh postgres    Up             5432/tcp              
aevolume_engine-analyzer_1        /docker-entrypoint.sh anch ...   Up (healthy)   8228/tcp              
aevolume_engine-api_1             /docker-entrypoint.sh anch ...   Up (healthy)   0.0.0.0:8228->8228/tcp
aevolume_engine-catalog_1         /docker-entrypoint.sh anch ...   Up (healthy)   8228/tcp              
aevolume_engine-policy-engine_1   /docker-entrypoint.sh anch ...   Up (healthy)   8228/tcp              
aevolume_engine-simpleq_1         /docker-entrypoint.sh anch ...   Up (healthy)   8228/tcp 

```

```
root@docker-host ~/aevolume $ docker-compose exec engine-api anchore-cli system status
Service policy_engine (anchore-quickstart, http://engine-policy-engine:8228): up
Service catalog (anchore-quickstart, http://engine-catalog:8228): up
Service apiext (anchore-quickstart, http://engine-api:8228): up
Service analyzer (anchore-quickstart, http://engine-analyzer:8228): up
Service simplequeue (anchore-quickstart, http://engine-simpleq:8228): up

Engine DB Version: 0.0.11
Engine Code Version: 0.5.1

```

```
root@docker-host ~/aevolume $ docker-compose exec engine-api anchore-cli system feeds list
Feed        Group   LastSync          RecordCount
vulnerabilities   alpine:3.1  2019-11-06T10:12:24.156013  1370
vulnerabilities   alpine:3.3  2019-11-06T10:12:29.196017  457
vulnerabilities   alpine:3.4  2019-11-06T10:12:37.156832  681
...

```



## Documentation:
- https://github.com/anchore/anchore-engine
- https://docs.anchore.com/current/docs/engine/engine_installation/docker_compose/

---
