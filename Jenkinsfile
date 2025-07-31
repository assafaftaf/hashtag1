pipeline {
    agent any

    triggers {
        githubPullRequest() // Requires GitHub plugin
    }

    stages {
        stage('Build') {
            when {
                changeRequest() // Only run on PRs
            }
            steps {
                echo "Building PR #${env.CHANGE_ID} from ${env.CHANGE_BRANCH}"
            }
        }
    }
}
