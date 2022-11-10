pipeline{
    agent any
    stages{
        stage("Pull code"){
            steps{
                git 'https://github.com/thanhlm1/devops.git'
            }
            post{
                always{
                    echo "========always========"
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
    }
}