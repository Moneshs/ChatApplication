pipeline {
    agent any
    stages {
        stage('Test') {
            
            steps {
             sshagent (credentials: ['c662f457-a520-4b6e-a099-e361298809f2']){
             sh ''' #! /bin/bash 
             rm -rf /var/lib/jenkins/workspace/chatapp/.git
             cd /home/ubuntu/jenkins
             ssh ubuntu@13.127.149.224 sudo rm -rf /home/ubuntu/ChatApplication/chatapp
             scp -r /home/ubuntu/jenkins/workspace/chatapp/ ubuntu@13.127.149.224:~/ChatApplication/
             ssh ubuntu@13.127.149.224 sudo service gunicorn restart sudo service nginx restart
             '''
            }
        }
    }
    }
}   
