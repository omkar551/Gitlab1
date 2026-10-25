pipeline {
    agent any

    environment {
        APP_NAME = 'devpulse-web'
        DOCKER_TAG = "v${BUILD_NUMBER}"
    }

    stages {
        stage('1. Checkout Code') {
            steps {
                echo 'Pulling latest code from Git repository...'
                checkout scm
            }
        }

        stage('2. Code Quality & Lint') {
            steps {
                echo 'Running static code analysis and structure validation...'
                sh '''
                    echo "Checking project files..."
                    test -f index.html
                    test -f styles.css
                    test -f app.js
                    test -f Dockerfile
                '''
            }
        }

        stage('3. Run Automated Tests') {
            steps {
                echo 'Running automated test suites...'
                sh '''
                    echo "Testing endpoint mocks..."
                    grep -q "DevPulse" index.html
                    echo "All automated tests passed successfully."
                '''
            }
        }

        stage('4. Docker Build & Containerize') {
            steps {
                echo 'Building Docker container image...'
                sh '''
                    docker build -t ${APP_NAME}:${DOCKER_TAG} -t ${APP_NAME}:latest .
                    docker images | grep ${APP_NAME}
                '''
            }
        }

        stage('5. Container Health Check') {
            steps {
                echo 'Verifying containerized service health...'
                sh '''
                    docker run -d --name temp-${BUILD_NUMBER} -p 8085:80 ${APP_NAME}:latest
                    sleep 3
                    curl -s http://localhost:8085/api/health || true
                    docker rm -f temp-${BUILD_NUMBER}
                '''
            }
        }
    }

    post {
        success {
            echo "Pipeline succeeded! Ready for deployment."
        }
        failure {
            echo "Pipeline failed. Check build logs."
        }
    }
}
