### Exercise 1: Accessing private repo with access token
###  Prerequisite
1. You have a running AWS EC2 instance.
2. You have a docker image ```<your-docker-hub-account>/jenkins_dind```
3. You have a running container ```jenkins_dind```
4. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and
   [NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
5. You have set up your personal public repo from exercise ```03\02_Exercises\03```.


### Task
1. Set your GitHub repository to private. 
2. Initialize in Jenkins a Pipeline with SCM  ssh initialisieren
3. Create ssh public and private keys with ```ssh-keygen -t ed25519 -C "your-email"```
4. Copy in Jenkins -> Credentials -> your private key 
5. Add in GitHub -> Settings -> SSH and GPG Keys -> your public key 
6. Pre-populate GitHub host key with steps below:

Step 1: Switch to Jenkins OS user
sudo su - jenkins

Step 2: Create .ssh directory if missing
mkdir -p ~/.ssh
chmod 700 ~/.ssh

Step 3: Add GitHub host keys
ssh-keyscan github.com >> ~/.ssh/known_hosts

(Optional but recommended – verify fingerprints)
ssh-keyscan -t rsa,ecdsa,ed25519 github.com >> ~/.ssh/known_hosts

Step 4: Secure permissions
chmod 644 ~/.ssh/known_hosts


For more details see solution with comments 
https://youtu.be/LKCz9sg2OjI