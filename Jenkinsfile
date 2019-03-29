pipeline {
  agent any
  stages {
    stage('Prepare Images') {
      steps {
        sh 'bash ./jenkins/scripts/prepare-image.sh'
      }
    }
    stage('Clean Images') {
      steps {
        sh 'bash ./jenkins/scripts/cleanup-images.sh'
      }
    }
    stage('Push Images') {
      steps {
        sh 'bash ./jenkins/scripts/push-images.sh'
      }
    }
  }
  environment {
    DOCKER_HUB_USER = 'kannanatdocker'
    DOCKER_HUB_PASSWORD = 'mkSk4482'
    CONTAINER_PORT = '9090'
    HOST_PORT = '9090'
    DB_CONN_STRING = 'ZGF0YSBzb3VyY2U9aW9tZWdhc3Fsc2VydmVydjIuZGF0YWJhc2Uud2luZG93cy5uZXQ7dXNlciBpZD1pb21lZ2FhZG1pbjtwYXNzd29yZD1QcmVzdGlnZTEyMztpbml0aWFsIGNhdGFsb2c9aW9tZWdhc3FsZGF0YWJhc2V2Mjs='
    CONTAINER_NAME = 'restservices'
    CLUSTER_NAME = 'sydney-cluster1'
    HOME = '.'
  }
}