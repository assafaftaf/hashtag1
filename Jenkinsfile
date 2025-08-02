pipeline {
    agent {
        docker { image 'rancher/dind:v1.10.3-rancher1' }
    }
    stages {
        stage('build') {
            steps {
                echo "$DOCKER_PASSWORD"
                sh 'echo $DOCKER_PASSWORD'
                docker build -t learn_jenkins .
            }
        
        stage('push') {
            steps {
                docker login -p
            }
        }
        }
    }
}
