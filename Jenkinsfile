pipeline {
    agent any
stages{
        stage('Build'){
            parallel{
                stage('Run')
                {
                    steps {
                        sh 'bash ./run_script.sh'
                    }
                }
                stage('Tests'){
                    steps {
                        sh 'bash ./run_tests.sh'
                    }
                    post {
                        always{
                            junit 'results.xml'
                        }
                    }
                }
            }

        }


    }
}