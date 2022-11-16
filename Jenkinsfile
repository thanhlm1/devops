def COLOR_MAP = [
    'SUCCESS': 'good',
    'FAILURE': 'danger',
]

pipeline{
    agent any
    stages{
        stage("Pull code"){
            steps{
                git branch: 'main', url: 'https://github.com/thanhlm1/devops.git'
            }
        }
        //  stage("Analysis"){
        //     environment {
        //         scannerHome = tool 'sonar4.7'
        //     }
        //     steps{
        //         withSonarQubeEnv('sonar') {
        //            sh '''$(scannerHome)/bin/sonar-scanner -Dsonar.login=d714f71552b1fa072f652e2e380fe6dc06b51350'''
        //       }
        //     }
        // }
   
        stage('Stop service') {
    	agent any
            steps {
      	        sh 'docker-compose -f /var/lib/jenkins/workspace/webapp/docker-compose.yaml down'
        }
    }
        stage('Clean Images') {
    	agent any
            steps {
      	        sh 'docker image rm week2docker'
        }
    }
        stage('Build image') {
    	agent any
            steps {
      	        sh 'docker build -f /var/lib/jenkins/workspace/webapp/Dockerfile -t week2docker .'
        }
    }
        stage('Push Image to Dockerhub') {
    	agent any
            steps {
      	        sh 'docker push thanhlm1704/week2docker'
        }
    }
        stage('Deploy') {
    	agent any
            steps {
      	        sh 'docker-compose -f /var/lib/jenkins/workspace/webapp/docker-compose.yaml up -d'
        }
    }
    }
    post {
        always {
            echo "Slack Notifications."
            slackSend channel: '#cicd-notifications',
                color: COLOR_MAP[currentBuild.currentResult],
                message: "*${currentBuild.currentResult}:* Job ${env.JOB_NAME} \n Details: ${env.BUILD_URL}"
        }
    }
}