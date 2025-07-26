pipeline {
  agent any

  environment {
    GREETING = 'שלום אסף'
  }

  stages {
    stage('Checkout') {
      steps {
        sh 'ls'
        git branch: 'main', url: 'https://github.com/assafaftaf/whatsapp-bot-full-folder.git'
        sh 'ls'
      }
    }

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

  post {
    always {
      echo '🚀 Pipeline Completed'
    }
  }
}
