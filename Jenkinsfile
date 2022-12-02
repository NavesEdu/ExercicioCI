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
                    cd ExercicioCI
                    mvn clean install
                   '''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh '''
                    cd ExercicioCI
                    mvn clean test site                  
                   '''
                  // archiveArtifacts 'ExercicioCI/target/site/' 
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