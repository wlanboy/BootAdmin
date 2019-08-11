pipeline {
  agent any
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
  }
}