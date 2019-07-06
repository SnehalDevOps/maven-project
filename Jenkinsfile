pipeline {
  agent any
  stages {
    steps ('clone my code'){
      git 'https://github.com/vpbobade/maven-project.git'
         }
         
    steps ('compile my code'){
      steps {
          withMaven(maven : 'local-maven-3.5.2'){
            sh 'mvn compile'
            }
            }
            }
            }
            }
            
      
  
