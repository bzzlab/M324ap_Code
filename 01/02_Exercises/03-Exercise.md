### Exercise 3: Create a custom agent
####  Prerequisite
Docker container environment (i.e. actual version of Docker-Desktop) is mandatory.
####  Tasks
1. Create a Docker file with the following features:
   1. Pull the image ```jenkins/agent```
   2. Login first as user root
   3. Update the container
   4. Install packages python3-pip, python3, curl
   5. Clean the container from the installation files
   6. Change to user jenkins
   7. Start bash 
2. Build the image.
3. Push the image into your registry of docker-hub
