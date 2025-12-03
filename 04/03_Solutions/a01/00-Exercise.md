### Exercise 1: Create a in Docker in Docker (DinD) image 
###  Prerequisite
You have a running AWS EC2 instance.

### Tasks
Create a DinD image ```<your-docker-hub-account>/jenkins_dind``` in three steps:
1. Complete all bash-scripts in order to build Dockerfile1 to Dockerfile3.  
2. Copy all bash-scripts (except *_scp.sh) to your AWS-EC2 instance 
3. Build and run on your AWS-EC2 instance jenkins_dind container.
4. Login into running jenkins-container (jenkins_dind) on your AWS EC2 instance.
See below the steps/commands
```
docker ps 
#--> should show jenkins_dind as running container
docker exec --privileged -it jenkins_dind bash
#--> root-prompt should appear
dockerd&
ps aux|grep dockerd
docker info
#--> dockerd should run
jenkins&
ps aux|grep jenkins
#--> jenkins should run
cat /var/jenkins_home/secrets/initialAdminPassword
#--> jenkins initial admin password should appear 
#--> save it 
curl http://localhost:8083
#--> HTML output appear
```
5. Exit container and curl jenkins
```
curl http://localhost:8083
#--> HTML output appear
```
6. Exit EC2 instance
7. Login into EC2 instance with port-mapping in order to access
jenkins over its webinterface.
```
ssh -i "<your-privte-key>" -L 8084:localhost:8083 <your ec2 instance>
```
8. Open browser with http://localhost:8084
9. Configure Jenkins