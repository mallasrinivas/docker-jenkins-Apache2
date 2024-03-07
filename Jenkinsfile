pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'demoapache2:v1.0'
        CONTAINER_NAME = 'my-container'
    }

    stages {
        stage('Preparation') {
            steps {
                // Clean the workspace
                deleteDir()
            }
        }
        stage('Fetch Source Code') {
            steps {
                node('Web-Server') {
                    git 'https://github.com/mallasrinivas/docker-jenkins-Apache2.git'
                    echo "Code cloned successfully"
                }
            }
        }

        stage('Build and Run Docker (for master branch)') {
            when {
                branch 'master'
            }
            steps {
                node('Web-Server') {
                    script {
                        docker.build(DOCKER_IMAGE_NAME)
                        docker.image(DOCKER_IMAGE_NAME).run('-p 82:80 --name ' + CONTAINER_NAME)
                    }
                }
                echo "Docker build and run successfully on master branch"
            }
        }

        stage('Build Docker Only (for devops branch)') {
            when {
                branch 'devops'
            }
            steps {
                node('Web-Server') {
                script {
                    docker.build(DOCKER_IMAGE_NAME)
                }
              }
              echo "Docker run successfully on devops branch"
            }
        }
    }
}