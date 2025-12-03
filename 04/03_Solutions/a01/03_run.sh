#!/usr/bin/bash
# Attention:
# Change CRLF (Windows) to LF (Unix on AWS) in your Editor
#
# Set variable PARAMS
PARAMS='01_params.sh' #??
# check if PARAMS is set else exit
if [ ! -f $PARAMS ]; then #??
    echo $PARAMS does not exist! #??
    exit 1 #??
fi #??
# import PARAMS
source $PARAMS #??

# if exists remove old jenkins_home
if [[ -d $HOME/jenkins_home ]] #??
then #??
  echo "Remove old jenkins_home .." #??
  rm -rf $HOME/jenkins_home #??
fi #??
# run image
echo "run now container"
docker run --privileged --name "$container3" \ #??
  -itd -p 8083:8080 \ #??
  -p 50003:50000 \ #??
  -v $HOME/jenkins_home:/var/jenkins_home:rw \ #??
  "$image3" #??

# start docker environment in the container
docker exec --privileged -it "$container3" bash #??
