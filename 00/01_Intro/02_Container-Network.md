## Network in Container
###  Pre requisit
Docker container environment (i.e. actual version of Docker-Desktop) is mandatory.
### Communication over network and port mapping 
1. Show IP-Address of container
```
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' my-bzzuntu
172.17.0.2
```
2. Pull the latest nginx-image from docker-hub
```
$ docker pull nginx:latest

$ docker image ls
REPOSITORY          TAG       IMAGE ID       CREATED        SIZE
nginx               latest    f9c14fe76d50   11 days ago    143MB
ubuntu              latest    1f6ddc1b2547   13 days ago    77.8MB
readydocker1/m122   latest    4f83d48ff416   4 months ago   247MB
```
3. Run container and map container port 8080 (outbound) to 80 (inbound).
```
docker container run -itd --name cnginx-A -p 8080:80 nginx
<ID will be shown>

$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                  NAMES
d0187e5b6d19   nginx     "/docker-entrypoint.…"   10 minutes ago   Up 10 minutes   0.0.0.0:8080->80/tcp   cnginx-A
```
4. Run a new container (with same image) with automatic port-mapping
```
docker container run -itd --name cnginx-A -P nginx
<ID will be shown>

$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS                   NAMES
bcc56fd4d3f8   nginx     "/docker-entrypoint.…"   18 seconds ago   Up 17 seconds   0.0.0.0:32768->80/tcp   cnginx-B
d0187e5b6d19   nginx     "/docker-entrypoint.…"   11 minutes ago   Up 11 minutes   0.0.0.0:8080->80/tcp    cnginx-A
```
5. Fetch explicitly port information from the running container
```
$ docker container port cnginx-A
80/tcp -> 0.0.0.0:8080

$ docker container port cnginx-B
80/tcp -> 0.0.0.0:32768
```
6. Testing nginx GET-response. Both show the same home page.
```
$ curl http://localhost:8080
or 
$ curl http://localhost:32768
```


### Create network bridge
1. Create two network bridges (my-bridge-1,2) with different parameters
```
docker network create --driver bridge my-bridge-1
docker network create --driver bridge --subnet=192.168.0.0/16 --ip-range=192.168.5.0/24 my-bridge-2
```

2. Show network
```
λ docker network ls

NETWORK ID     NAME          DRIVER    SCOPE
f273f2f8db15   bridge        bridge    local
d3d3cc6da8a3   host          host      local
4fbd961ce05a   my-bridge-1   bridge    local
ff514f619394   my-bridge-2   bridge    local
2a2101d3c00b   none          null      local

```
3. Show network by filter driver
```
docker network ls --filter driver=bridge
NETWORK ID     NAME          DRIVER    SCOPE
f273f2f8db15   bridge        bridge    local
4fbd961ce05a   my-bridge-1   bridge    local
ff514f619394   my-bridge-2   bridge    local
```

4. Network is only useful for running containers.
```
λ docker start my-bzzuntu
λ docker ps
CONTAINER ID   IMAGE           COMMAND       CREATED      STATUS             PORTS     NAMES
8c4534af73e7   ubuntu:latest   "/bin/bash"   4 days ago   Up About an hour             my-bzzuntu
```
5. Connect container my-bzzuntu to my-bridge-1
```
docker network connect my-bridge-1 my-bzzuntu
```
6. Inspect part "Networks" in the container (Networks -> bridge and my-bridge-1) 
```
docker container inspect my-bzzuntu
```
7. Inspect part "Name" and "Containers" in the container (Networks -> bridge and my-bridge-1) 
```
λ docker network inspect my-bridge-1
```
8. Disconnect container from network and inspect bridge-1 again 
```
λ docker network disconnect my-bridge-1 my-bzzuntu
λ docker network inspect my-bridge-1
<no container should be visible in the configuration>
```
