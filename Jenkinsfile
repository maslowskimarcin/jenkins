pipeline {
    agent any
stages{
        stage('Build'){
            steps {
                sh 'bash ./run_script.sh'
            }
        }
        stage('Tests'){
            steps {
                sh 'bash ./run_tests.sh'
            }
            post {
                    junit 'results.xml'


            }
        }

    }
}