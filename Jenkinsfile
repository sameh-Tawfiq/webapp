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
		stage("deploy"){
			steps {
				echo 'deploying the application...'
			}
		
		}
	}
}
