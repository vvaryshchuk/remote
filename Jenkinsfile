/*
    Jenkinsfile (Declarative Pipeline)
*/

pipeline {
    agent { docker { image 'python:3.6' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'pip install docker-compose'
                sh 'docker-compose --version'
                sh 'echo $PWD'
            }
        }
    }
}


