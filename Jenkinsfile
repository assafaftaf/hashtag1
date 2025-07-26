pipeline {
  agent any

  environment {
    GREETING = 'שלום אסף'
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/<your-username>/demo-project.git'
      }
    }

    stage('Permissions') {
      steps {
        sh 'chmod +x hello.sh'
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
