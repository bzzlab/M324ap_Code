#!/bin/bash
#
# Set variable for target node (your AWS EC2 instance)
DEST="ubuntu@ec2-34-239-106-8.compute-1.amazonaws.com" #??
# Set variable for target directory where the app should be stored
DIR="~/trafficlight" #??
# Set private key
PRIVATE_KEY="$HOME/.ssh/educator.pem" #??
# check if private key is set
if [ ! -f ${PRIVATE_KEY} ]; then #??
    echo ${PRIVATE_KEY} does not exist! #??
    exit 1 #??
fi #??
# remove (with ssh) target directory for the app
ssh -i ${PRIVATE_KEY} ${DEST} "rm -rf ${DIR}" #??
# create (with ssh) target directory for the app
ssh -i ${PRIVATE_KEY} ${DEST} "mkdir ${DIR}" #??
# copy (with scp) all bash script to destination
scp -i ${PRIVATE_KEY}  0{1..5}*.sh ${DEST}:${DIR} #??
# copy (with scp) the backend to destination
scp -r -i ${PRIVATE_KEY} backend ${DEST}:${DIR} #??
# copy (with scp) dockerfile to destination
scp -i ${PRIVATE_KEY} *_dockerfile ${DEST}:${DIR} #??
# copy (with scp) unit testing files to destination
for file in "package.json trafficlight.test.js" #??
do #??
     scp -i ${PRIVATE_KEY} ${file} ${DEST}:${DIR} #??
done #??