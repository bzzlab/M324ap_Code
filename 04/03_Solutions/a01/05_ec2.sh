#!/bin/bash
#
# Copy this script to ~/.ssh
ssh -i "~/.ssh/educator.pem" -L 8084:localhost:8083 \
ubuntu@ec2-54-147-43-9.compute-1.amazonaws.com

