pipeline{
    agent any
    stages{
        stage("Pull code"){
            steps{
                git branch: 'main', url: 'https://github.com/thanhlm1/devops.git'
            }
        }
   
        stage('Clean') {
    	agent any
            steps {
      	        sh 'docker-compose down'
        }
    }
        stage('Build image') {
    	agent any
            steps {
      	        sh 'docker build -f /var/lib/jenkins/workspace/webapp/Dockerfile -t week2docker .'
        }
    }
        stage('Deploy') {
    	agent any
            steps {
      	        sh 'docker-compose -f /var/lib/jenkins/workspace/webapp/docker-compose.yaml up -d'
        }
    }
    }
}