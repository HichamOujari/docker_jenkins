pipeline{
   
    environment {
registry = "hichamouja99/atelier6"
registryCredential = 'dockerhub'
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
               sh 'mvn package'
                    }
                 }
        stage('Build Docker Image') {
            steps {
                script {
                  sh 'docker build -t hichamouja99/atelier6 .'
                }
            }
        }
        
        stage('Deploy Image') {
                  steps{
                   script {
                   docker.withRegistry( '', registryCredential ) {
                   sh 'docker push hichamouja99/atelier6'
                   }
                   }
                   }
}
     
    }
}