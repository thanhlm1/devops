pipeline{
    agent any
    stages{
        stage("Pull code"){
            steps{
                git branch: 'main', url: 'https://github.com/thanhlm1/devops.git'
            }
        }
        stage('Docker Build') {
    	agent any
            steps {
      	        sh 'docker build -f /var/lib/jenkins/workspace/webapp/Dockerfile -t week2docker .'
        }
    }
    }
}