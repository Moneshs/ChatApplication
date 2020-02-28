pipeline {
    agent any
    stages {
       
        stage('Test') {
           steps {
             sh ''' #! /bin/bash 
             cd /home/ubuntu
             
             aws deploy create-deployment --application-name chatapp --deployment-group-name chatapp-tf --deployment-config-name CodeDeployDefault.AllAtOnce --github-location repository=Moneshs/ChatApplication,commitId=${GIT_COMMIT}
             '''
            }
        }
         stage('status'){
            steps {
            sh ''' #! /bin/bash
            echo Deployment started
            '''
            }  
        }
    }
    }
