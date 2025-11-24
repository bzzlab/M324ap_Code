#!/bin/bash
#
LIB='../../../bin/prep-lib.sh'
if [ ! -f $LIB ]; then      #??
  echo $LIB does not exist! #??
  exit 2                    #??
fi                          #??
source $LIB
#----------------------------------------
if test $# -lt 1; then
  printf "%s\n" \
    "Error: Provide at least 1 argument:" \
    "Prep number n" \
    "Exit script."
  exit 1
fi

CLT="client"
SRV="backend"
DEST="../../00_Demo/02"

case $1 in
0)
  createTargetDir "${DEST}"
  cp -r ${SRV} "${DEST}/${SRV}"
  ;;
1)
  TARGET=${DEST}
  declare -a fileArray=($(ls 0{1..4}*.sh))
  fileArray+=('Traffic_dockerfile')
  for file in "${fileArray[@]}"
  do
#    if [[ ${file} = "trafficlight.test.js" ]]; then
     removeSolution ${file} "${TARGET}/${file}"
#    else
#       cp ${file} "${TARGET}/${CLT}/${file}"
#    fi
  done
  ;;
*)
  echo "Incorrect choice entered!"
  ;;
esac
