pipeline {
     agent any
     stages {
        stage ("git checkout") {
            steps {
                git ('https://github.com/vpbobade/maven-project')
            }
        }
    
        stage ("Checkout to different branch") {
            steps {
                sh "git branch -r"
                sh "git checkout master"
            } 
        }        
        stage ("package stage") {
            steps {
                sh label: '', script: 'mvn clean package'
            } 
        }    
        
        stage ("Building docker image") {
		 //Build the docker image with a tag (qualys:sample in this case)
			steps {
				dir("dockerbuild")
				sh "docker build -t vpbobade/vbob-app1:1.0.0 . > docker_out"
	        }	    
	    }
	
		stage ('Push Docker image to DockerHub') {
			steps {
		        withCredentials([usernamePassword(credentialsId: 'mydocker', passwordVariable: 'pass', usernameVariable: 'user')]) {
                sh "docker login -u ${user} -p ${pass}"
				}
                sh 'docker push vpbobade/vbob-app1:1.0.0'
            }
        }
	
	
		stage ('Get Image id') {
//Use the same repo:tag (qualys:sample in this case) combination with the grep command to get the same image id and save the image id in an environment variable
			steps {
				script {
					def IMAGE_ID = sh(script: "docker images | grep -E '^vpbobade/vbob-app1:*1.0.0' | head -1 | awk '{print \$3}'", returnStdout:true).trim()
					env.IMAGE_ID = IMAGE_ID
				}
			}
	    }
	
//Start Using the Plugin
//Define docker image Ids

		stage ('Get Image Vulns - Qualys Plugin') {
//Use the same environment variable(env.IMAGE_ID) as an input to Qualys Plugin's step
			steps {
					getImageVulnsFromQualys useGlobalConfig:true, imageIds: env.IMAGE_ID
		    }
        }
        
		stage ('Deploy to Dev') {
            steps {
                script {
                def dockerRun = 'docker run -d -p 9000:8080 --name my-tomcat-app vpbobade/vbob-app1:1.0.0'
                sshagent(['deploy_to_docker']) {
                sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.81.65 ${dockerRun}"
            }
        }
	}	    
	}
}
}
