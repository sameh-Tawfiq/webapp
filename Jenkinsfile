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
		stage("run"){
			steps {
				echo 'running the application...'
				sh """
				  docker run -itd --name weboncentos -p 80:80 freecloudtest/mywebapp:latest
				"""
			}
		
		}
		stage("deploy"){
			steps {
				echo 'deploying the application...'
			}
		
		}
	}
}
