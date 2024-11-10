#!/usr/bin/env bash
#
### Steps to build and run 0x_dockerfile
PARAMS='01_params.sh'
if [ ! -f $PARAMS ]; then  #??
    echo $PARAMS does not exist! #??
    exit 2  #??
  fi  #??
source $PARAMS
# run image
echo "run now container"
docker run --privileged --name "$container" \
  -itd --rm -p 8083:8080 \
  --volume jenkins-log:/var/log/jenkins:rw \
  --volume jenkins-data:/var/jenkins_home:rw \
  "$image"

docker exec -it -u root --privileged "$container" \
  bash -c "cat /var/lib/jenkins/.jenkins/secrets/initialAdminPassword"
docker exec -it -u root --privileged "$container" bash
