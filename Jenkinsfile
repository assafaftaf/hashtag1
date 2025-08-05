pipeline {
    agent any

    // Optionally use triggers if webhooks aren't set up
    triggers {
        githubPush()  // <-- Not needed if using webhook
    }

    // Only run the pipeline for PRs
    options {
        skipDefaultCheckout()
    }

    stages {
        stage('Check if this is a PR') {
            when {
                expression {
                    return env.CHANGE_ID != null
                }
            }
            steps {
                echo "This is a Pull Request"
                echo "PR ID: ${env.CHANGE_ID}"
                echo "From branch: ${env.CHANGE_BRANCH}"
                echo "Target branch: ${env.CHANGE_TARGET}"
            }
        }

        stage('Build and Test') {
            when {
                expression {
                    return env.CHANGE_ID != null
                }
            }
            steps {
                echo "Running build/test steps for PR #${env.CHANGE_ID}"
                // Add your real build/test steps here
            }
        }
    }

    post {
        always {
            echo "Finished build for ${env.JOB_NAME} #${env.BUILD_NUMBER}"
        }
    }
}
