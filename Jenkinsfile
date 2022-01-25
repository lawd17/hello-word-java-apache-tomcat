pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                sh 'mvn clean test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                sh "docker build -t hello-word-java-apache-tomcat . "
                sh "docker run -d -p 8081:8080 hello-word-java-apache-tomcat"
            }
        }
        stage('Test Integration') {
            steps {
                sh "wget -m http://localhost:8081/app-web-jonay"
            }
        }
    }
}