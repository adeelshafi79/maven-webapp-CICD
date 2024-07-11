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
      
        stage('Deploy to Tomcat server') {
            steps {
                deploy adapters: [tomcat9(path: '', url: 'http://172.208.118.86:8080')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
