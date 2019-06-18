pipeline {
  agent any
  
  tools{
  
     maven : 'MAVEN_HOME'
    jdk : 'Java8'
  }
  stages {
    stage('build') {
      steps {
      
        bat "mvn compile"
      
      }
      
      stage('test'){
      
        steps{
        bat "mvn test"
             }
    }
    
    stage('result'){
 
      steps{
      echo 'sucess'
      }
    }
  }
}
