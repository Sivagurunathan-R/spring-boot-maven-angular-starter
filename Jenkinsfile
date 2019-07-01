pipeline {
  agent any

  environment {

    PATH = "C:\\WINDOWS\\SYSTEM32;C:\\Users\\LGI\\AppData\\Local\\Programs\\Microsoft VS Code\\bin;C:\\Users\\LGI\\AppData\\Roaming\\npm;C:\\Program Files\\Docker Toolbox"
    DOCKER_CERT_PATH = "C:\\Users\\LGI\\.docker\\machine\\machines\\default"
    DOCKER_HOST = "tcp://192.168.99.100:2376"
    DOCKER_MACHINE_NAME = "default"
    DOCKER_TLS_VERIFY = "1"
    DOCKER_TOOLBOX_INSTALL_PATH = "C:\\Program Files\\Docker Toolbox"
    NO_PROXY = "192.168.99.100"
}

  tools{
  maven 'MAVEN_HOME'
  jdk 'Java8'
  }
  
  stages {
    stage('mvn package') {
      steps {
        bat "mvn clean install"
      }
    }
    
    stage('docker command'){
    
      steps{
      
        echo  'executing docker command'
      
        bat 'docker version'
      }
    }
    
    stage('build image'){
    
      steps{
      
        bat 'docker build -t siva/angular:v2 .'
      }
    }
  }
}
