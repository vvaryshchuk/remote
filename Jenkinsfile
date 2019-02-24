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
                sh 'echo $PWD'
                sh 'docker-compose --version'
                sh 'docker-compose up'
                sh 'docker-compose down'
            }
        }
    }
}


