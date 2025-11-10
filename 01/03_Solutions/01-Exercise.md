### Exercise 1: Installing and start Jenkins as container
###  Prerequisite
Docker container environment (i.e. actual version of Docker-Desktop) is mandatory. 

### Tasks
1. Login with SSH and port mapping on your AWS EC2 instance. 
Example:
```bash
ssh -i <your.pem> -L <local port>:localhost:<remote port> user@ec2-instance #??
ssh -i "educator.pem" \ #??
-L 8081:localhost:8080 \ #??
ubuntu@ec2-3-82-206-152.compute-1.amazonaws.com #??
# Open a browser locally with URL http://localhost:8081 #??
```
2. Check if the Jenkins image (from Docker Hub registry) is already pulled for you. If 
not then do it by yourself.
```bash
docker pull jenkins/jenkins #??
docker images #??
```
3. Create a volume directory to keep (persist) the Jenkins data on your host
```bash
mkdir $HOME/jenkins_home #??
```
4. Run Jenkins as a container and give it a proper name to the container:
```bash
docker run -d -p 8080:8080 -v $HOME/jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins #??
```
5. Jenkins will ask for the administrator password. It can be found in the Jenkins logs:
```bash
docker logs jenkins #??
```
[<img src="img/01.png" width="250"/>](img/01.png)

If you don't see the complete logs than wait some 30-60 seconds until Jenkins
has completely started.

6. After accepting the initial password, Jenkins asks whether to install the suggested plugins, which are adjusted for the most common use cases. As the first Jenkins installation, it's reasonable to let Jenkins install all the recommended plugins.
7. After the plugin installation, Jenkins asks you to set up a username, password (choose a simple password i.e. hello1234), and other basic information. If you skip it, the token from step 2 will be used as the admin password.

[<img src="img/02.png" width="250"/>](img/02.png)

8. The installation is then complete, and you should see the Jenkins dashboard:

[<img src="img/03.png" width="250"/>](img/03.png)

9. Test Jenkins with the "Hello World" pipeline

Remark: All essential steps can be reviewed on https://youtu.be/V5FaBvCqHzI #??