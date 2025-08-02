pipeline {
    agent {
        docker { image 'rancher/dind:v1.10.3-rancher1' }
    }
    environment {
        HUB_PASSWORD = credentials('5c377826-722d-4505-a534-7e2745aa216c') // ID from Jenkins credentials
    }
    stages {
        stage('build') {
            steps {
                echo "Building Docker image"
                sh 'docker build -t learn_jenkins .'
            }
        }
        stage('push') {
            steps {
                echo "Logging into Docker registry"
                echo "HUB_PASSWORD"
                sh '''
                    echo $HUB_PASSWORD | docker login -u assaf888 --password-stdin
                    docker push learn_jenkins
                '''
            }
        }
    }
}
