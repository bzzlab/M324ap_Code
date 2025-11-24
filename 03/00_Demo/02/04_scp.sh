#!/bin/bash
#
# set variable personal aws configuration
CONF='../../../bin/aws.conf'
# check if configuration exists
if [ ! -f $CONF ]; then
  echo $CONF does not exist!
  exit 2
fi
# Import aws configuration
source ${CONF} #??
# Set variable for source directory
SRC="." #??
# Set variable for target directory where the app should be stored
DIR="~/03" #??

# remove (with ssh) target directory for the app
echo "rm -rf ${DIR} on ${DEST}"
ssh -i ${PRIVATE_KEY} ${DEST} "rm -rf ${DIR}"
# create (with ssh) target directory for the app
echo "mkdir ${DIR} on ${DEST}"
ssh -i ${PRIVATE_KEY} ${DEST} "mkdir ${DIR}"
# copy (with scp) all bash script to destination
scp -i ${PRIVATE_KEY}  ${SRC}/0{1..3}*.sh ${DEST}:${DIR} #??
# copy (with scp) the backend to destination
scp -r -i ${PRIVATE_KEY} ${SRC}/backend ${DEST}:${DIR} #??
# copy (with scp) dockerfile to destination
scp -r -i ${PRIVATE_KEY} ${SRC}/*_dockerfile ${DEST}:${DIR} #??