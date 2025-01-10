#!/bin/bash
#
# Set variable for target node (your AWS EC2 instance)
DEST="<your-ec2-instance>" #??
# Set private key
PRIVATE_KEY="$HOME/.ssh/<your-private-key>.pem" #??
# check if private key is set
if [ ! -f ${PRIVATE_KEY} ]; then #??
    echo ${PRIVATE_KEY} does not exist! #??
    exit 1 #??
fi #??
# Set variable for target directory where the app should be stored
DIR="~/dind_jenkins" #??

# remove (with ssh) target directory for the app
echo "Remove directory ${DIR} on ${DEST}"
ssh -i ${PRIVATE_KEY} ${DEST} "rm -rf ${DIR}" #??
echo "Create directory ${DIR} on ${DEST}"
# create (with ssh) target directory for the app
ssh -i ${PRIVATE_KEY} ${DEST} "mkdir ${DIR}" #??
# copy (with scp) all Dockerfiles to destination
scp -i ${PRIVATE_KEY}  Dockerfile* ${DEST}:${DIR} #??
# copy (with scp) all bash script to destination
scp -i ${PRIVATE_KEY}  0{0..3}*.sh ${DEST}:${DIR} #??
scp -i ${PRIVATE_KEY}  0{5..7}*.sh ${DEST}:${DIR} #??