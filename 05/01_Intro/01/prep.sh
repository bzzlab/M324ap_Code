#!/bin/bash
#
LIB='../../../bin/prep-lib.sh'
if [ ! -f $LIB ]; then      #??
  echo $LIB does not exist! #??
  exit 2                    #??
fi                          #??
source $LIB


function a01() {
  args=("$@")
  local input=${args[0]}
  local DEST=${args[1]}
  local filename=$(basename -- "$input")
  local extension="${filename##*.}"
  local filename="${filename%.*}"
}

#----------------------------------------
if test $# -lt 1; then
  printf "%s\n" \
    "Error: Provide at least 1 argument:" \
    "Prep number n" \
    "Exit script."
  exit 1
fi

DEST="../../00_Demo/01"

case $1 in
0)
  createTargetDir "${DEST}"
  #cp 0{0..1}*.sh "${DEST}"
  ;;
1)
#  cd ${CLT} || exit;
  TARGET=${DEST}
  declare -a fileArray=($(ls Jenkinsfile*))
  for file in "${fileArray[@]}"
  do
    removeSolution ${file} "${TARGET}/${file}"
  done
  ;;
*)
  echo "Incorrect choice entered!"
  ;;
esac
