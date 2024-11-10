### Exercise 3: Pipeline with conditions
###  Prerequisite
1. A Jenkins controller with Docker-in-Docker is running. 
If not, then pull ```readydocker1/judop:1.0``` from dockerhub.
2. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and 
[NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
### Tasks
1. Read at least chapter 2.2. in the article on [How to Use Conditional Constructs in Jenkins Pipeline](https://www.baeldung.com/linux/jenkins-conditional-constructs).
2. Optimize the stage 'Install jest-cli' with the bash code based on the following pseudocode:
```
if jest-cli package is not installed then
    write corresponding message 
    install jest-cli
else 
    write corresponding message
end
```    
With command below you can determine if the package is installed.
```
npm ls -g -p |grep jest-cli
```
3. Update the Jenkins file and your repo with it.
4. Build and check the updated pipeline.

