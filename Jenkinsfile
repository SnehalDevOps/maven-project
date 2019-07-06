pipeline {
  agent any
  steps {
     stage ('clone my code'){
      git 'https://github.com/vpbobade/maven-project.git'
         }
         
     stage ('compile my code'){
      steps {
          withMaven(maven : 'local-maven-3.5.2'){
            sh 'mvn compile'
            }
            }
            }
            }
            }
            
      
  
