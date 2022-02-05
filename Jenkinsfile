pipeline {
        agent any

        environment {
	    PASS = credentials('docker-login')
	    aws_ip = credentials('aws_ip')
	}
	stages {

             stage ('Build') {
                 steps{
                     sh '''
                        ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                        ./jenkins/build/build.sh

                       '''
                 }
   		 post {
       	 	     success {
            		 archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
        		} 
    		}

             }

             stage ('Test') {
                 steps{
                     sh '''
			 ./jenkins/test/test.sh mvn test

		        '''
                 }
    		 post {
        	     always {
                         junit 'java-app/target/surefire-reports/*.xml'
        	 	 }
    		}
             }

             stage ('Push') {
                 steps{
                     sh '''
	 		 ./jenkins/push/push.sh

		       '''
                }
             }

             stage ('Deploy') {
                 steps{
                     sh '''
                         ./jenkins/delpoy/deploy.sh

                       '''
                }
             }
        }

        post {
            success {
                 sh '''
                        echo "Successfully Executed"
                    '''
           }
        }
}

