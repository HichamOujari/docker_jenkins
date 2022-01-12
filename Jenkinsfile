pipeline{
   
    environment {
registry = "hichamouja99/atelier6"
registryCredential = 'dockerHub'
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
                  sh '/opt/homebrew/bin/docker build -t hichamouja99/atelier6 .'
                }
            }
        }
        stage('Login dockerhuB') {
            steps {
                script {
                  sh '/opt/homebrew/bin/docker login -u hichamouja99 -p "Hicham1237*@"'
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