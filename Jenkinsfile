pipeline{
    agent any
    stages{
        stage("Pull code"){
            steps{
                git branch: 'main', url: 'https://github.com/thanhlm1/devops.git'
            }
        }
    }
}