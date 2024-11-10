### Exercise 4: Create a in Docker in Docker (DinD) image 
###  Prerequisite
Docker container environment (i.e. actual version of Docker-Desktop) is mandatory.
### Tasks
Create a DinD image in three steps:
1. Create first base image with ```DockerfileUBase``` 
2. Create a 2nd base image with ```DockerfileJEU``` that has ```DockerfileUBase``` as base image.
3. The last image ```DockerfileJUDO``` includes all image build from 1.+2. 
Run this container in privileged mode and map ports 8000 and 50000.
4. Configure Jenkins and test the pipeline stepwise. Especially the container
runtime in Jenkins has to work properly in order to build and run the traffic light app
as container image.
