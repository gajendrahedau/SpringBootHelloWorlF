node{
    stage("git clone"){
    git url: 'https://github.com/gajendrahedau/SpringBootHelloWorlF.git'
    }
    stage("maven clean"){
        def mavenHome= tool name: "maven",type: "maven"
        sh "${mavenHome}/bin/mvn clean package"
        
    }
    stage('Connect to Tomcat Server'){
        sshagent (credentials: ['jenkins']) {
            sh "scp -o StrictHostKeyChecking=no target/*.war ec2-user@3.84.253.225:/opt/tomcat/webapps/"
        }
    }
}
