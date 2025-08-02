pipeline {
    agent {
        docker { image 'docker:24.0.7-dind' }
    }
    environment {
        HUB_PASSWORD = credentials('5c377826-722d-4505-a534-7e2745aa216c') // ID from Jenkins credentials
    }
    stages {
        stage('build') {
            steps {
                echo "Building Docker image"
                sh 'docker build -t assaf888/learn_jenkins .'
            }
        }
        stage('push') {
            steps {
                echo "🔐 Logging into Docker Hub and pushing image"

                sh 'echo "$HUB_PASSWORD" | docker login -u assaf888 --password-stdin'
                sh '''
                    docker push assaf888/learn_jenkins
                '''
            }
        }
    }
}
