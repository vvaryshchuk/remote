/*
    Jenkinsfile (Declarative Pipeline)
*/

pipeline {
    agent { docker { image 'python:3.6' 
                     args '-v /var/run/docker.sock:/var/run/docker.sock' } 
          }
    
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'pip install --user docker-compose'
                sh 'docker-compose --version'
                sh 'echo $PWD'
            }
        }
    }
}


