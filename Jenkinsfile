pipeline {
    agent any
    tools {
        maven 'MAVEN'
    }
    stages {
        stage("Build") {
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    echo "Archiving the Artifacts"
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit '**/test-reports/TEST-*.xml'
                }
            }
        }
        stage('Deploy to Tomcat server') {
            steps {
                deploy adapters: [tomcat9(credentialsId: '4fd75e70-72d4-4eca-88f2-ceb50d550227', path: '', url: 'http://74.235.239.120/')], contextPath: '/java-webapp', war: '**/*.war'
            }
        }
    }
}
