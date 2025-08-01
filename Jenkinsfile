pipeline {
  agent any

  environment {
    GREETING = 'שלום אסף'
  }

  stages {

    stage('Permissions') {
      steps {
        sh 'chmod +x hello.sh'
        sh 'ls'
      }
    }

    stage('Run Script') {
      steps {
        sh './hello.sh'
      }
    }

    stage('Print Env') {
      steps {
        echo "⚡️ ${env.GREETING}"
      }
    }
  }
    stage('dockerrize') {
      steps {
        sh 'docker --help'
        docker
      }
    }
  }
  post {
    always {
      echo '🚀 Pipeline Completed'
    }
  }
}
