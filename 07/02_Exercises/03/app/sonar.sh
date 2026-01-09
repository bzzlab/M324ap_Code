#!/usr/bin/bash
# Attention:
# Change CRLF (Windows) to LF (Unix on AWS) in your Editor
#
sonar-scanner \
  -Dsonar.projectKey=<YOUR-PROJECT-KEY> \
  -Dsonar.sources=. \
  -Dsonar.host.url=<YOUR-HOST-URL> \
  -Dsonar.token=<YOUR-TOKEN> \
  -Dproject.settings=./sonar-project.properties

