pipeline {
    agent  { label 'built-in' }

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t shekhar-portfolio .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop portfolio-container || true && docker rm portfolio-container || true'
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d --name portfolio-container -p 8081:80 shekhar-portfolio'
            }
        }
    }
}
