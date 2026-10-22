#!/bin/bash
#
# dos2unix as tool is required on your target node!
# To install this tool type:
# sudo apt install dos2unix
#
echo "Convert now CRLF (Windows) to LF (Unix) ..."
find . -name "*.sh" -exec dos2unix {} \;