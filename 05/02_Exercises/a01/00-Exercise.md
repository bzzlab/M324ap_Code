### Exercise 1: Accessing private repo with access token
###  Prerequisite
1. A Jenkins controller with Docker-in-Docker is running. 
If not, then pull ```readydocker1/judop:1.0``` from dockerhub.
2. The latest Jenkins plugins [Docker pipeline](https://plugins.jenkins.io/docker-workflow/) and 
[NodeJs](https://plugins.jenkins.io/nodejs/) are installed and configured.
### Task 1: Simple testpipeline
1. Set your github repository to private.
2. Create a "Personal access token (classic)" on github. If you don't know 
how then read the [article](https://docs.catalyst.zoho.com/en/tutorials/githubbot/java/generate-personal-access-token/).
Important: Handle the token as a password and save it before leaving the page.
3. Create a Jenkins pipeline as file for testing purposes, i.e.:
```
pipeline {
  agent any
  tools {nodejs "node"}
  stages {
      stage('Test NodeJS Installation') {
        steps {
            sh 'npm --version; node --version'
        }
      }
      stage('Install jest-cli') {
          steps {
              script {
                  sh """
                      echo "Installing jest-cli ..."
                      npm install jest-cli -g
                  """
              }
          }
      }
  }
}
```
4. Set up a SCM pipeline. The URL changes to
```
https://<your-token>@github.com/<repo-path>.git
```
it contains the name of the testpipeline (step 3) and the 
credentials with token.

[<img src="img/01.png" width="250"/>](img/01.png)

[<img src="img/02.png" width="250"/>](img/02.png)

5. Test your pipeline

### Task 2: Add Checkout stage
If Task 1 has been accomplished successfully then,
1. Add to testing pipeline or update your existing pipeline 
with the corresponding Repo-URL that includes your access token.
2. Test again your pipeline. This time, the pipeline should contain
a stage that checks out the code from your private repo.


