pipeline {
  agent any
  
  tools{
  
     maven 'MAVEN_HOME'
    jdk 'Java8'
  }
  stages {
    
    stage('build') {
      steps {
      
        bat "mvn compile"
      
      }
    } 
      stage('test'){
        steps{
        bat "mvn test"
             }
    }
    
    stage('package'){
      
      steps{
      bat "mvn package"
      }
    }
    
    stage('result'){

      parallel{
      
        stage('stage 1')
        {
          steps{
          echo 'stage 1 executed'
          }
        }
      
        stage('stage 2')
        {
          steps{
          
            echo 'stage 2 executed'
          }
        }
      }
    }
    
  }
}
