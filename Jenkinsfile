pipeline {
    agent any
    stages {
        stage('Test') {
            
            steps {
             sshagent (credentials: ['c662f457-a520-4b6e-a099-e361298809f2']){
             sh ''' #! /bin/bash 
             rm -rf /var/lib/jenkins/workspace/chatapp/.git
             cd /var/lib/jenkins/ 
             ssh ubuntu@13.234.118.185 sudo rm -rf /home/ubuntu/ChatApplication/chatapp
             scp -r /var/lib/jenkins/workspace/chatapp/ ubuntu@13.234.118.185:~/ChatApplication/
             ssh ubuntu@13.234.118.185 sudo service gunicorn restart sudo service nginx restart
             '''
            }
        }
    }
    }
}   
