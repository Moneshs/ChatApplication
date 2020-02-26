pipeline{
     agent any
     stages {
        stage ('Test ssh'){
            steps{
               sshagent (credentials: ['c662f457-a520-4b6e-a099-e361298809f2'])
               sh "ssh -vvv -o StrictHostKeyChecking=no -T ubuntu@13.234.115.189"
            }    
        }     
        stage('Deploy'){
            steps {
               sh ''' #! /bin/bash
               mkdir newfolder1
               '''
           }
        }
     }  
}     
