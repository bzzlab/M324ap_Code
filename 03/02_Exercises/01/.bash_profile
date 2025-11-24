#!/bin/bash
# create or copy this file into ~/bin on your AWS EC2 instance
#
export PATH=$PATH:~/bin
# Use minikube's Docker daemon so the image is available
# to the cluster without pushing to a registry
mdoc(){
    eval $(minikube -p minikube docker-env)
    sleep 2
    docker images
}

# minikube start
msta(){
    minikube start
    minikube status
}

# minikube stop
msto(){
    minikube stop
    minikube status
}