
Install Anchore CLI. Verify installation. 
Using Anchore CLI scan 3 different images.   

## Requirements:
- anchore CLI should be installed;
- scan 3 different images from docker.io: **centos**, **nginx**, **postgres**
- write result of scanning - OS vulnerabilities:
  - for **centos** - to file `/root/centos_vuln`
  - for **nginx** - to file `/root/nginx_vuln`
  - for **postgres** - to file `/root/postgres_vuln`


## Check
Anchore CLI installation:
```
root@docker-host ~/aevolume $ anchore-cli --version
anchore-cli, version 0.5.0
```
Let's check `ubuntu:latest`:
```
root@docker-host ~/aevolume $ anchore-cli image add docker.io/library/ubuntu:latest
Image Digest: sha256:e4355b66995c96b4b468159fc5c7e3540fcef961189ca13fee877798649f531a
Parent Digest: sha256:c19173c5ada610a5989151111163d28a67368362762534d8a8121ce95cf2bd5a
Analysis Status: not_analyzed
...

# a few minutes later
root@docker-host ~/aevolume $ anchore-cli image list
Full Tag                          Image Digest              Analysis Status        
docker.io/library/ubuntu:latest   sha256:e4355b...49f531a   analyzed

root@docker-host ~/aevolume $ anchore-cli image vuln docker.io/library/ubuntu:latest os
Vulnerability ID  Package         Severity  Fix   Vulnerability URL
CVE-2009-5155   libc-bin-2.27-3ubuntu1  Low     None  https://people.canonical.com/~ubuntu-security/cve/2009/CVE-2009-5155.html
CVE-2009-5155   libc6-2.27-3ubuntu1   Low     None  https://people.canonical.com/~ubuntu-security/cve/2009/CVE-2009-5155.html
...

```


## Documentation:
- https://github.com/anchore/anchore-cli
- https://github.com/anchore/anchore-engine
- https://docs.anchore.com/current/docs/engine/engine_installation/docker_compose/

---
