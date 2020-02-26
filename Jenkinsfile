pipeline{
     agent any
     stages {
        stage ('Test ssh'){
            steps{
               sshagent (credentials: ['ubuntu'])
               sh "ssh -vvv -o StrictHostKeyChecking=no -T ubuntu@13.234.115.189"
            }    
        }     
       stage('Deploy'){
          steps {
             sh ''' #! /bin/bash
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
