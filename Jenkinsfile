pipeline {

    agent any

    tools {

        maven "MAVEN_HOME"

    }

    stages {

        stage('Initialization'){

            steps{

                git branch: 'main', credentialsId: '99753f48-7430-4aa3-b526-ac645cb66640', url: 'https://github.com/R-o-h-i-t-k-u-m-a-r/springboot-jenkins-docker.git'

            }

        }

        stage('Clean'){

            steps{

                bat "mvn clean"

            }

        }

        stage('Build and Test') {

            steps {

                bat "mvn -Dmaven.test.failure.ignore=true package"

            }

            post {

                success {

                    junit '**/target/surefire-reports/TEST-*.xml'

                    archiveArtifacts 'target/*.jar'

                }

            }

        }

        stage('Build Docker Image'){

            steps{

                script{

                    bat "docker build -t libraryapplication -f DockerFile ."

                }

            }

        }

        stage('Run Docker Image'){

            steps{

                script{

                    bat "docker run libraryapplication."

                }

            }

        }

    }

}
