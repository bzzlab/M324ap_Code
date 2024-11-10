### Exercise 1: Pipeline in Jenkinsfile
###  Prerequisite
1. A Jenkins controller with Docker-in-Docker is running.
   If not, then pull ```readydocker1/judop:1.0``` from dockerhub.
2. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and
   [NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
### Tasks
1. Create a personal repository with the contents of ```a00-repo```.
2. Fill the missing steps in the Jenkins file "Jenkinsfile1".
3. Test the Jenkins file in a standard-pipeline (Copy&Paste content of the file).  
4. If step 3. works successfully then set up an SCM (Source code management)-pipeline in order 
to execute pipeline steps stored in the Jenkins file.
5. Build and check the new pipeline.
