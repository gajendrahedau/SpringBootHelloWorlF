node{
    stage("git clone"){
    git 'https://github.com/gajendrahedau/SpringBootHelloWorlF.git'
    }
    stage("maven clean"){
        def mavenHome= tool name: "maven",type: "maven"
        sh "${mavenHome}/bin/mvn clean package"
     }
    stage("Run Spring Boot application"){
        sshagent (credentials: ['ec2-user']) {
            sh '''scp -o StrictHostKeyChecking=no target/*.war ec2-user@18.212.186.125:/opt/
                 echo "Hello"
                 echo "Hi"
            
            '''
            
        }
    }
}
