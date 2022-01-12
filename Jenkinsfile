pipeline{
   
    environment {
        registry = "hichamouja99/atelier6"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
  agent any
    stages {
        stage('Build') {
               steps {
               sh 'mvn package'
                    }
                 }
        stage('Build Docker Image') {
            steps {
                script {
                  sh '/opt/homebrew/bin/docker build -t hichamouja99/atelier6 .'
                }
            }
        }
        
        stage('Deploy Image') {
                  steps{
                   script {
                   docker.withRegistry( '', registryCredential ) {
                   sh '/opt/homebrew/bin/docker push hichamouja99/atelier6'
                   }
                   }
                   }
}
     
    }
}