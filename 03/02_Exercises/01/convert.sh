#!/bin/bash
#
# dos2unix as tool is required on your target node!
# To install this tool type:
# sudo apt install dos2unix
#
CMD="dos2unix"
echo "Checking ${CMD} installation ..."
if command -v ${CMD} &> /dev/null; then
    VER=$(${CMD} --version)
    echo "${CMD} version ${VER} is installed!"
else
    echo "${CMD} installation not found. Installing now ..."
    sudo apt install dos2unix
fi

if test $# -lt 1; then
  printf "%s\n" \
    "Error: Provide at least 1 argument:" \
    "file of file by wildcard to convert" \
    "Exit script."
  exit 1
fi

file=$1
echo "Convert now CRLF (Windows) to LF (Unix) ..."
find . -name "${file}" -exec dos2unix {} \;
