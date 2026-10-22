### Exercise 2: Test container pipeline 
###  Prerequisite
1. You have a running AWS EC2 instance.
2. You have a docker image ```<your-docker-hub-account>/jenkins_dind```
3. You have a running container ```jenkins_dind```
4. You have set up your personal public repo from exercise ```03\02_Exercises\a02```.
5. Previous exercises has been finished successfully.

### Tasks
1. Read article (Article-1.pdf) on ```Jenkins Building Docker Image and Sending to
 Registry``` starting from chapter ```Creating a job to test docker command```
2. Implement the mentioned procedure to your Jenkins-instance in order build and 
access your registry via Jenkins.
3. Test the pipeline code in Jenkins. 