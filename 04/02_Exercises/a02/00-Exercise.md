### Exercise 2: Variable in the Pipeline
###  Prerequisite
1. A Jenkins controller with Docker-in-Docker is running.
   If not, then pull ```readydocker1/judop:1.0``` from dockerhub.
2. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and
   [NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
### Tasks
1. Replace in "Jenkinsfile1" the container name with an appropriate variable (BASH syntax) and 
initialize it in the environment section.
2. Update your repo with it.
3. Build and check the updated pipeline.
