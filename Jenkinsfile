pipeline {
  agent any
  tools { 
     jdk 'java11slave' 
  }
  options {
    buildDiscarder(logRotator(numToKeepStr: '1'))
  }
  parameters {
      booleanParam(defaultValue: false, description: 'Publish to DockerHub', name: 'PUBLISHIMAGE')
  }
  environment {
    LOGSTASH = 'nuc:5044'
  }  
  stages {
    stage('Git') {
      steps {
        git(url: 'https://github.com/wlanboy/BootAdmin.git', branch: 'master')
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }    
    stage('Container') {
      steps {
        sh 'docker build -t bootadmin:latest . --build-arg JAR_FILE=./target/bootadmin-0.0.2-SNAPSHOT.jar'
      }
    }
    stage('Publish') {
      when { expression { params.PUBLISHIMAGE == true } }
      steps {
        withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
          sh 'docker push wlanboy/bootadmin:latest'
        }
      }
    }
  }
}
