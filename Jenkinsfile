pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
             checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/doct15/example-tomcat-war']]])
            }
        }
        stage('Maven Build') {
            steps {
                sh "mvn clean install"
                sh "mvn package"
            }
        }
        stage('Deploy war') {
            steps {
                sh'cp /var/lib/jenkins/workspace/java_tomcat/target/*.war /root/apache-tomcat-9.0.58/webapps'
            }
        }
    }
}

