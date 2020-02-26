pipeline {
    agent any
    stages {
        stage('ssh') {
            
            steps {
             sshagent (credentials: ['c662f457-a520-4b6e-a099-e361298809f2'])
            
            }
        }
        stage('Test') {
            
            steps {
             sh ''' #! /bin/bash
             mkdir newfolder2
             rm -rf /var/lib/jenkins/workspace/chatapp1/.git
             cd /var/lib/jenkins/
             ssh ubuntu@13.234.115.189 sudo rm -rf /home/ubuntu/ChatApplication/chatapp
             scp -r /var/lib/jenkins/workspace/chatapp1/ ubuntu@13.234.115.189:~/ChatApplication/
             ssh ubuntu@13.234.115.189 sudo service gunicorn restart sudo service nginx restart
             '''
            }
        }
    }
}   
