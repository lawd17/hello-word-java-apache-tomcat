pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                echo 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                echo 'mvn clean package'
            }
        }
        stage('Deploy') {
            steps {
                sh "docker build -t hello-word-java-apache-tomcat . "
                sh "docker run -d -p 8082:8082 hello-word-java-apache-tomcat"
            }
        }
        stage('Test Integration') {
            steps {
                sh "wget -m http://localhost:8082/app-web-jonay"
                sh "grep -i Jonay http://localhost:8082/app-web-jonay/index.jsp"
            }
        }
    }
}