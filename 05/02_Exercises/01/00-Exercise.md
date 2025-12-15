### Exercise 1: Pipeline for pushing Container-Image (unsafe version)
###  Prerequisite
1. You have a running AWS EC2 instance.
2. You have a docker image ```<your-docker-hub-account>/jenkins_dind```
3. You have a running container ```jenkins_dind```
4. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and
   [NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
5. You have set up your personal public repo from exercise ```03\02_Exercises\03```.

### Tasks
1. Fill the missing gaps in order to push the built image into your registry.
2. For testing purpose hardcode your registry credentials to test the pipeline 
REMARK: You NEVER hardcode passwords in your Jenkinsfile.

