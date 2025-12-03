#!/usr/bin/bash
# Attention:
# Change CRLF (Windows) to LF (Unix on AWS) in your Editor
# This script should be executed within jenkins_dind
jenkins &
sleep 2
cat /root/.jenkins/secrets/initialAdminPassword

