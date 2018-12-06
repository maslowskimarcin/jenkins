pipeline {
    agent any
stages{
        stage('Build'){
            steps {
                sh 'run_script.sh'
            }
        }
        stage('Tests'){
            steps {
                sh 'run_tests.sh'
            }
            post {
                success {
                    
                    junit 'results.xml'

                }
            }
        }

    }
}