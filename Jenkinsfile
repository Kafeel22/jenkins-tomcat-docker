pipeline {
    agent any

    environment {
        DOCKER_CLI = 'docker'
        DOCKER_CREDENTIALS_ID = 'docker-hub-credentials-id' // Jenkins credentials ID
        EC2_USER = 'ec2-user' // Change to your EC2 user
        EC2_HOST = 'your-ec2-instance-ip' // Replace with your EC2 instance IP or DNS
        IMAGE_NAME = 'mdkafeel/calculator:latest' // Replace with your Docker image name
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the repository
                git url: 'https://github.com/faisalkamilansari/oriserve.git', branch: 'main'
            }
        }

        stage('Building war file') {
            steps {
                // Compile and package the application using Maven
                sh "mvn clean package"
            }
        }
        stage('Build Docker Image') {
            steps {
                sh "docker build -t mdkafeel/calculator ."
            }
        }
        stage('Login to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS_ID) {
                        // Login is handled automatically by the docker.withRegistry block
                        def appImage = docker.image("mdkafeel/calculator")
                        appImage.push()
                    }
                }
            }
        }
        stage('Deploy to AWS EC2') {
            steps {
                script {
                    // Create a deployment in AWS CodeDeploy
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]){
                    sh """
                    ssh ${EC2_USER}@${EC2_HOST} '
                        docker pull mdkafeel/calculator:latest && \
                        docker stop my-container || true && \
                        docker rm my-container || true && \
                        docker run -d --name my-container -p 80:8080 mdkafeel/calculator:latest
                    '
                    """
                    }
                }
            }
        }

    }

    post {
        always {
            // Clean up workspace after the build
            cleanWs()
        }
        success {
            // Notify on successful build and deployment
            echo 'Deployment completed successfully!'
        }
        failure {
            // Notify on failure
            echo 'Deployment failed!'
        }
    }
}
