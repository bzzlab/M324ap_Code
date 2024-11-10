## Working with Container and Images
###  Pre requisit
Docker container environment (i.e. actual version of Docker-Desktop) is mandatory.

### Searching images
1. Search all images (see also https://docs.docker.com/engine/reference/commandline/search/)
```
docker search python:3.10 --filter is-official=false
docker search ubuntu:20.04 --filter stars=1
```
2. Search and output result in formatted manner (see also https://docs.docker.com/engine/reference/commandline/search/#format)
```
docker search --format "table {{.Name}}\t{{.Description}}\t{{.IsOfficial}}\t{{.StarCount}}" registry
```
### Pull an image
1. Pull latest version of nginx
   ```docker image pull nginx:latest```
2. Pull alpine-Unix version of nginx
   ```docker image pull nginx:alpine```
3. Pull nginx with all tags (Ctrl+C for stop pulling)
   ```docker image pull --all-tags nginx```

### Listing images
1. List all images
```
docker images
or
docker image ls
```
2. List all nginx images
   ```docker images nginx```

### Inspect images
1. Inspect images with formatted outputs
```
docker image inspect app03b_img:latest
docker image inspect --format "{{json .Config}}" app03b_img:latest
```

2. Show intermediate layer of a container
```
docker image history app03b_img
```
with output
Remarks: layers with <missing> are pulled layer from docker hub that are not cached in order for reuse  
```
IMAGE          CREATED       CREATED BY                                      SIZE      COMMENT
0506b998ae2e   4 hours ago   STOPSIGNAL SIGKILL                              0B        buildkit.dockerfile.v0
<missing>      4 hours ago   CMD ["python" "app.py"]                         0B        buildkit.dockerfile.v0
<missing>      4 hours ago   HEALTHCHECK &{["CMD-SHELL" "curl --fail http…   0B        buildkit.dockerfile.v0
<missing>      4 hours ago   RUN /bin/sh -c pip install -r requirements.t…   4.64MB    buildkit.dockerfile.v0
<missing>      4 hours ago   WORKDIR /app                                    0B        buildkit.dockerfile.v0
<missing>      4 hours ago   COPY ./deploy /app # buildkit                   1.11kB    buildkit.dockerfile.v0
<missing>      5 hours ago   RUN /bin/sh -c apt-get update -y &&     apt-…   347MB     buildkit.dockerfile.v0
<missing>      3 days ago    /bin/sh -c #(nop)  CMD ["/bin/bash"]            0B        
<missing>      3 days ago    /bin/sh -c #(nop) ADD file:3c74e7e08cbf9a876…   63.2MB    
<missing>      3 days ago    /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B        
<missing>      3 days ago    /bin/sh -c #(nop)  LABEL org.opencontainers.…   0B        
<missing>      3 days ago    /bin/sh -c #(nop)  ARG LAUNCHPAD_BUILD_ARCH     0B        
<missing>      3 days ago    /bin/sh -c #(nop)  ARG RELEASE                  0B        
```

### Run vs create a container
1. Create a container
```
docker container create -it --name bzzuntu ubuntu:latest
```
with output
```
CONTAINER ID   IMAGE           COMMAND       CREATED         STATUS    PORTS     NAMES
8c4534af73e7   ubuntu:latest   "/bin/bash"   2 minutes ago   Created             bzzuntu
```
2. Run a container in detached mode (d-Option) and removing (--rm Option) it after running
```
docker container run -itd --rm --name bzzuntu-run ubuntu:latest
```
with output
```
CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS          PORTS     NAMES
9541c5015471   ubuntu:latest   "/bin/bash"   53 seconds ago   Up 52 seconds             bzzuntu-run
8c4534af73e7   ubuntu:latest   "/bin/bash"   16 minutes ago   Created                   bzzuntu
```
3. Restart container
```
docker container restart --time 5 bzzuntu
```
with output
```
CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS         PORTS     NAMES
8c4534af73e7   ubuntu:latest   "/bin/bash"   47 minutes ago   Up 2 minutes             bzzuntu
with output
```

### Rename container
```
λ docker ps -a
CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS         PORTS     NAMES
8c4534af73e7   ubuntu:latest   "/bin/bash"   47 minutes ago   Up 3 minutes             bzzuntu
```
Now rename container
```
docker container rename bzzuntu my-bzzuntu
```
with output
```
λ docker ps -a
CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS         PORTS     NAMES
8c4534af73e7   ubuntu:latest   "/bin/bash"   48 minutes ago   Up 3 minutes             my-bzzuntu
```

### Attach to a container
Attaching STDIO and STDERR of our container to terminal of docker-client
```
λ docker ps -a
CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS         PORTS     NAMES
8c4534af73e7   ubuntu:latest   "/bin/bash"   48 minutes ago   Up 3 minutes             my-bzzuntu
```
Attach now to the container
```
λ docker container attach my-bzzuntu
root@8c4534af73e7:/# ls
bin  boot  dev  etc  home  lib  lib32  lib64  libx32  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@8c4534af73e7:/# exit
```
Container will be stopped by exiting it. 
Therefore, reattaching works only if the container has been restarted before.
```
λ docker ps -a
CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS                     PORTS     NAMES
8c4534af73e7   ubuntu:latest   "/bin/bash"   56 minutes ago   Exited (0) 4 seconds ago             my-bzzuntu
λ docker container attach my-bzzuntu
You cannot attach to a stopped container, start it first
λ docker container restart my-bzzuntu
my-bzzuntu
λ docker container attach my-bzzuntu
....
```
### Execute commands in container
1. Execute a command in a running container. In this example list with bash-command ```ls``` the contents of 
the root-directory 
```
λ docker container exec -it my-bzzuntu ls                                                                                 
bin  boot  dev  etc  home  lib  lib32  lib64  libx32  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var     
```
2. Container is still running after command execution. No restart is required.
```
λ docker ps -a                                                                                                            
CONTAINER ID   IMAGE           COMMAND       CREATED             STATUS          PORTS     NAMES                          
8c4534af73e7   ubuntu:latest   "/bin/bash"   About an hour ago   Up 17 minutes             my-bzzuntu                     
```
3. Execute again the list for more detailed output of the root-directory
```
λ docker container exec -it my-bzzuntu ls -al                                                                             
total 56                                                                                                                  
drwxr-xr-x   1 root root 4096 Jun  2 13:21 .                                                                              
drwxr-xr-x   1 root root 4096 Jun  2 13:21 ..                                                                             
-rwxr-xr-x   1 root root    0 Jun  2 13:21 .dockerenv                                                                     
lrwxrwxrwx   1 root root    7 May 22 14:04 bin -> usr/bin                                                                 
...
```

### Cleaning up container an images
2. List first all existing images
```
$ docker image ls
REPOSITORY          TAG       IMAGE ID       CREATED        SIZE
readydocker1/m122   latest    4f83d48ff416   4 months ago   247MB
ubuntu              latest    a8780b506fa4   7 months ago   77.8MB
```
3. Start ubuntu image as container bzzuntu-1 and bzzuntu-2
```
$ docker container run -itd --rm --name bzzuntu-1 ubuntu:latest
5f5ea9c0348044bba30eee9b9b8012d46cd7273cdd9c5f4e9cd777e92147f1e5
$ docker container run -itd --rm --name bzzuntu-2 ubuntu:latest
850e1fb195ccc5b0fb36234e6f5bedf6b78e2d37e75825ff22490ef8defcde3b
```
4. Show running containers
```
$ docker ps
CONTAINER ID   IMAGE           COMMAND   CREATED          STATUS          PORTS     NAMES
850e1fb195cc   ubuntu:latest   "bash"    11 seconds ago   Up 10 seconds             bzzuntu-2
5f5ea9c03480   ubuntu:latest   "bash"    19 seconds ago   Up 19 seconds             bzzuntu-1
```
5. Stop first container by ID (before removing image)
```
$ docker stop 5f5
5f5
$ docker ps -a
CONTAINER ID   IMAGE           COMMAND   CREATED         STATUS         PORTS     NAMES
850e1fb195cc   ubuntu:latest   "bash"    8 minutes ago   Up 8 minutes             bzzuntu-2
```
6. Stop second container by name
```
$ docker stop bzzuntu-2
bzzuntu-2

$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES 
```
7. Image can be remove by tag oder by id. In this example by tag.
```
$ docker image ls
REPOSITORY          TAG       IMAGE ID       CREATED        SIZE
readydocker1/m122   latest    4f83d48ff416   4 months ago   247MB
ubuntu              latest    a8780b506fa4   7 months ago   77.8MB

$ docker rmi ubuntu:latest
Untagged: ubuntu:latest
Untagged: ubuntu@sha256:4b1d0c4a2d2aaf63b37111f34eb9fa89fa1bf53dd6e4ca954d47caebca4005c2
Deleted: sha256:a8780b506fa4eeb1d0779a3c92c8d5d3e6a656c758135f62826768da458b5235
```
