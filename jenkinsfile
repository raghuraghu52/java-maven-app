pipeline {
    agent any
    tools {  maven "m1" }
    stages {
          stage('build') {
            steps {
                sh "mvn -B -Dskiptests clean install"
            }
          }
            stage('test') {
            steps {
                 sh "mvn test"
               
            }
            post {
                always {
                    junit "target/surefire-reports/*.xml"
                }
            }
        }
          stage('Deliver') {
            steps {
                 sh "./scripts/deliver.sh"
            }
          }
    }
}
