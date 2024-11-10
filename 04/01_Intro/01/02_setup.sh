#!/usr/bin/env bash
#
### Steps to build and run 0x_dockerfile
PARAMS='01_params.sh'
if [ ! -f $PARAMS ]; then  #??
    echo $PARAMS does not exist! #??
    exit 2  #??
  fi  #??
source $PARAMS
# Build a dockerfile with tag -t
echo "build image"
docker build -t "$image" -f "$file" .
# List images
docker image ls

