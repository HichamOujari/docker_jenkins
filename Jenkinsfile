pipeline {
    environment {
        registry = "hichamouja99/atelier6"
        registryCredential = 'dockerHub'
        dockerImage = ''
    }
    agent any
    tools {
        maven 'Maven'
        jdk 'java 17.0.1'
        docker 'docker'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Building image') {
            steps{
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy Image') {
            steps{
                script {
                    docker.withRegistry( 'atelier6', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}