pipeline {
    agent any
    tools {
        nodejs "NodeJS 14.15.4"
    }

    stages {
        stage ("Checkout") {
            steps {
                checkout scm
            }
        }
        stage ("Build Dockerfile") {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                }
            }
            steps {
                sh "npm install curl grep"
                sh "curl 'http://localhost:80' | grep 'Angular'"
            }
        }
    }
}
