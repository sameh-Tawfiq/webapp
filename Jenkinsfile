pipeline {
	agent any
	stages {
		stage("build"){
			steps {
				echo 'building the application...'
                                sh """
				  docker build  --no-cache -t freecloudtest/mywebapp:latest .
				"""
			}
		
		}
		stage("test"){
			steps {
				echo 'testing the application...'
			}
		
		}
                stage("publish"){
			steps {
				echo 'Publishing the application...'
				withDockerRegistry([ credentialsId: "freecloudtest", url: "" ]) {
				sh """
				  docker push freecloudtest/mywebapp:latest
				"""
				}
			}
		
		}
		stage("deploy"){
			steps {
				echo 'deploying the application...'
                                sh """
				  /usr/local/bin/ansible-playbook playbook.yml
				"""
			}
		
		}
	}
}
