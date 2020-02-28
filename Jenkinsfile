pipeline {
    agent any
    stages {
        stage('Test') {
            
            steps {
             sh ''' #! /bin/bash 
             cd /home/ubuntu
             sudo aws deploy create-deployment --application-name chatapp --deployment-group-name chatapp-tf --deployment-config-name CodeDeployDefault.AllAtOnce --github-location repository=Moneshs/ChatApplication,commitId=4a16c3f90a1816f48f4a475a7e175f656c5c4f92
             '''
            }
        }
    }
    }
}   
