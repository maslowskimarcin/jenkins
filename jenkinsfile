pipeline {
    agent any
     triggers {
        cron('* * * * *')
    }
stages{
        stage('Build'){
            steps {
                sh '/home/maslo/run_script.sh'
            }
        }
        stage('Tests'){
            steps {
                sh '/home/maslo/run_tests.sh'
            }
            post {
                success {
                    
                    junit 'results.xml'

                }
            }
        }

    }
}