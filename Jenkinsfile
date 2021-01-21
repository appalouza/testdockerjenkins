pipeline {
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
                bat "npm install curl grep"
                bat "curl 'http://localhost:80' | grep 'Angular'"
            }
        }
    }
}