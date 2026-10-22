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
# declare -a server=($(ls 0*_server.js))

case $1 in
0)
  DEST="../../00_Demo/01"
  createTargetDir "${DEST}/${CLT}"
  createTargetDir "${DEST}/${SRV}"
  cp "Readme.md" "${DEST}"
  ;;
1)
  cd ${CLT} || exit;
  DEST="../../../00_Demo/01"
  declare -a fileArray=($(ls *.js))
  fileArray+=('package.json')
  for file in "${fileArray[@]}"
  do
    if [[ ${file} = "trafficlight.test.js" ]]; then
     removeSolution ${file} "${DEST}/${CLT}/${file}"
    else
       cp ${file} "${DEST}/${CLT}/${file}"
    fi
  done
  ;;
2)
  cd ${SRV} || exit;
  DEST="../../../00_Demo/01"
  declare -a fileArray=($(ls *.js))
  fileArray+=('package.json')
  for file in "${fileArray[@]}"
  do
    if [[ ${file} = "api.trafficlight.js" ||
          ${file} = "index.js" ]]; then
      removeSolution ${file} "${DEST}/${SRV}/${file}"
    else
      cp ${file} "${DEST}/${SRV}/${file}"
    fi
  done
  ;;
*)
  echo "Incorrect choice entered!"
  ;;
esac
