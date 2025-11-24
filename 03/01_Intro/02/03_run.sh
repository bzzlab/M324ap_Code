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
# run image
echo "run now $container" #??
# run docker
docker run -itd --rm -p 3000:3000 --name "$container" "$image" #??
