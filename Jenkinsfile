pipeline {
    agent { label 'Windows' }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'GitHub_Cred', url: 'https://github.com/pvaranasi95/NumGuessWheel_DockerImage.git'
            }
        }
        stage('Run Docker File') {
            steps {
               bat "docker build -t numguesswheel:%BUILD_NUMBER% ."
            }
        }
    }
}
