node{
    stage("git clone"){
    git 'https://github.com/gajendrahedau/SpringBootHelloWorlF.git'
    }
    stage("maven clean"){
        def mavenHome= tool name: "maven",type: "maven"
        sh "${mavenHome}/bin/mvn clean package"
     }
    stage("Create Docker Image"){
        sh "sudo docker build -t spring ."
     }
    stage("Run Spring Boot application"){
        sh "sudo docker run spring"
     }
}
