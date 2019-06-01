 node{

     stage('SCM Checkout'){
         git credentialsId: 'scm-checkout', url: ' https://github.com/pantbinod/grails_status.git'
     }


     stage('Build war file'){
         sh "chmod 755 gradlew"
         sh "./gradlew build"
     }

     stage('Build docker file'){
         sh "docker build -t pantbinod/grailsdemo:0.0.1 ."
     }

     stage("run application"){


         withCredentials([string(credentialsId: 'dockerHubPass', variable: 'dockerlogin')]) {

             sh "docker login -u pantbinod -p  ${dockerlogin}"

       }
            sh "docker push pantbinod/grailsdemo:0.0.1"

     }


     stage("run docker image in local machine"){
         def dockerRm = "docker rm -f grailsdemo"
         def dockrRun = "docker run -p 8091:8080 -d --name grailsdemo pantbinod/grailsdemo:0.0.1"
         sh "${dockerRm}"
         sh "${dockrRun}"
     }


 }