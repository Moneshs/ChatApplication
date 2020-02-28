pipeline {
    agent any
    stages {
        stage('build'){
            steps {
            sh ''' #! /bin/bash
            if ( ${BUILD_NUMBER} == "12" );
            then
            BUILD_NUMBER=${BUILD_NUMBER}-8;
            fi
            '''
            }  
        }
        stage('Test') {
           steps {
             sh ''' #! /bin/bash 
             cd /home/ubuntu
             aws deploy create-deployment --application-name chatapp --deployment-group-name chatapp-tf --deployment-config-name CodeDeployDefault.AllAtOnce --github-location repository=Moneshs/ChatApplication,commitId=${GIT_COMMIT}
             '''
            }
        }
    }
    }
