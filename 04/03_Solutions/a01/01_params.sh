#!/usr/bin/bash
# Attention:
# Change CRLF (Windows) to LF (Unix on AWS) in your Editor
#
# Set your dockerhub user
user="readydocker1"
# Set variable 'file1' for the docker file
file1="Dockerfile1" #??
# Set variable 'container1' for container-name
container1="jenkins1" #??
# Set variable 'image1' for container-image
image1=${user}/${container1} #??

# Set variable 'file2' for the docker file
file2="Dockerfile2" #??
# Set variable 'container2' for container-name
container2="jenkins2" #??
# Set variable 'image2' for container-image
image2=${user}/${container2} #??

# Set variable 'file3' for the docker file
file3="Dockerfile3" #??
# Set variable 'container3' for container-name
container3="jenkins_dind" #??
# Set variable 'image3' for container-image
image3=${user}/${container3} #??
