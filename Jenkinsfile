pipeline {
    agent {
        docker { image 'rancher/dind:v1.10.3-rancher1' }
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
                sh '''
                    echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
                    docker push learn_jenkins
                '''
            }
        }
    }
}
