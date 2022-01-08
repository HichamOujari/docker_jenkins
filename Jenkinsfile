pipeline {
    environment {
        registry = "hichamouja99/atelier6"
        registryCredential = 'd7de5acd-7b46-4e96-8f0e-c67a48d2b925'
        dockerImage = ''
    }
    agent any
    tools {
        maven 'Maven'
        jdk 'java 17.0.1'
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