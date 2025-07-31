pipeline {
    agent any

    parameters {
        string(name: 'GREETING', defaultValue: 'Hello', description: 'Greeting message')
        booleanParam(name: 'RUN_TESTS', defaultValue: true, description: 'Run unit tests?')
        choice(name: 'ENVIRONMENT', choices: ['dev', 'staging', 'prod'], description: 'Target environment')
    }

    stages {
        stage('Print Parameters') {
            steps {
                echo "GREETING: ${params.GREETING}"
                echo "RUN_TESTS: ${params.RUN_TESTS}"
                echo "ENVIRONMENT: ${params.ENVIRONMENT}"
            }
        }
    }
}
