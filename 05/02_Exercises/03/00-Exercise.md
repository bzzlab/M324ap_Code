### Exercise 3: Pipeline with conditions
###  Prerequisite
1. You have a running AWS EC2 instance.
2. You have a docker image ```<your-docker-hub-account>/jenkins_dind```
3. You have a running container ```jenkins_dind```
4. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and
   [NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
5. You have set up your personal public repo from exercise ```03\02_Exercises\03```.
6. Previous exercises has been finished successfully.

### Tasks
1. Optimize the stage 'Install jest-cli' with the bash code based on the following pseudocode:
```
set variable to install jest-cli package
if variable not empty then
    write corresponding message 
    install jest-cli
    if error code not 0 then
      write failure message
    fi
else 
    write message is already installed
end
```    
With command below you can determine if the package is installed.
```
npm ls -g -p |grep jest-cli
```
3. Update the Jenkins file and your repo with it.
4. Build and check the updated pipeline.

