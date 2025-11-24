#!/bin/bash
#
TEMP=tmp.sh
if test $# -lt 1; then
  printf "%s\n" \
    "Error: Provide at least 1 argument:" \
    "file to clean" \
    "Exit script."
  exit 1
fi

file=$1
echo "Removing #?? in ${file} ..."
cp -f ${file} ${TEMP}
cat ${TEMP} | sed 's/ #??//' |\
  sed 's/[ \t]*$//' > ${file}
rm ${TEMP} 2>/dev/null