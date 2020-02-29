pipeline {
    agent any
      options {
            buildDiscarder(logRotator(numToKeepStr: '7'))
             }
    stage('Sonarqube') {
    environment {
        scannerHome = tool 'SonarQubeScanner'
    }
    steps {
        withSonarQubeEnv('sonarqube') {
            sh "${scannerHome}/bin/sonar-scanner"
        }
        timeout(time: 10, unit: 'MINUTES') {
            waitForQualityGate abortPipeline: true
        }
       }
    }

    stages {
       stage('Approval'){
           options {
             timeout(time: 30, unit: 'SECONDS') 
            }
           input {
             message "Should we continue?"
            }   
           steps {
            echo "Continuing with deployment"
            }  
        }
        
        stage('Deploy') { 
           steps {
             sh ''' #! /bin/bash 
             
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
    post { 
        always { 
            echo 'Stage is success'
        }
    }
    
    
}
