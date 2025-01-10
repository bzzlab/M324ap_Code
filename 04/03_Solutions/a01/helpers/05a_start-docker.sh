#!/usr/bin/bash
# Attention:
# Change CRLF (Windows) to LF (Unix on AWS) in your Editor
# This script should be executed within jenkins_dind
# run docker damon
dockerd &
sleep 2
# check if docker is running
docker info
