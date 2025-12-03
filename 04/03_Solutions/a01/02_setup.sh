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

# function building Image based on their Dockerfiles
function buildImage { #??
    args=("$@") #??
    local image=${args[0]} #??
    local file=${args[1]} #??
    echo "Build image ${image} with ${file} ..." #??
    docker build -t "$image" -f "$file" . #??
    docker image ls #??
} #??

# Build a dockerfiles with function
buildImage ${image1} ${file1}
buildImage ${image2} ${file2}
buildImage ${image3} ${file3}