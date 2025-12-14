### Exercise 1: Pipeline for pushing Container-Image (unsafe version)
###  Prerequisite
1. You have a running AWS EC2 instance.
2. You have a docker image ```<your-docker-hub-account>/jenkins_dind```
3. You have a running container ```jenkins_dind```
4. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and
   [NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
5. You have set up your personal public repo from exercise ```03\02_Exercises\03```.
6. Previous exercises has been finished successfully.


### Tasks — Save the Password in Jenkins Credentials
1. Open: Jenkins ⇢ Manage Jenkins ⇢ Credentials
2. Choose a domain (usually: “(global)”)
3. Click Add Credentials
4. Select type:
   Secret text → to store a password or token
   Username with password → if you need both
5. Give it an ID, e.g.: MY_SECRET_PASSWORD
   or for username/password: MyLogin
6. Check in the console output that the credentials are masked (not clear-text)

You NEVER hardcode passwords in your Jenkinsfile.


