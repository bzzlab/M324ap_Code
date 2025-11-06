### Exercise 1: Installing and start Jenkins as container
###  Prerequisite
Docker container environment (i.e. actual version of Docker-Desktop) is mandatory. 

### Tasks
1. Login with SSH and port mapping on your AWS EC2 instance. 
Example:
```bash
#??
#??
#??
#??
#??
```
2. Pull Jenkins image from Docker Hub registry and list your images
```bash
#??
#??
```
3. Create a volume directory to keep (persist) the Jenkins data on your host
```bash
#??
```
4. Run Jenkins as a container and give it a proper name to the container:
```bash
#??
```
5. Jenkins will ask for the administrator password. It can be found in the Jenkins logs:
```bash
#??
```
[<img src="img/01.png" width="250"/>](img/01.png)

6. After accepting the initial password, Jenkins asks whether to install the suggested plugins, which are adjusted for the most common use cases. As the first Jenkins installation, it's reasonable to let Jenkins install all the recommended plugins.
7. After the plugin installation, Jenkins asks you to set up a username, password, and other basic information. If you skip it, the token from step 2 will be used as the admin password.

[<img src="img/02.png" width="250"/>](img/02.png)

8. The installation is then complete, and you should see the Jenkins dashboard:

[<img src="img/03.png" width="250"/>](img/03.png)

9. Test Jenkins with the "Hello World" pipeline

#??