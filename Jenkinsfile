pipeline {
    agent any

    environment {
        EMAIL = "eduardo.naves@ges.inatel.br"
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh '''
                    cd jenkins-docker-s107
                    npm install
                    node_modules/.bin/ng build
                   '''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh '''
                    cd jenkins-docker-s107
                    node_modules/.bin/ng test                   
                   '''
                  // archiveArtifacts 'Aula-GitHub-Actions/target/site/' 
            }
        }
        stage('Notification') {
            steps {
                echo 'Sending email....'
                sh '''
                    cd scripts/
                    chmod 775 *
                    ./jenkins.sh ${EMAIL}
                   '''
            }
        }
    }
}