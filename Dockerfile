FROM openjdk:8
WORKDIR target/
ADD springboot-helloworld-0.0.1-SNAPSHOT.war spring-boot.war
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-boot.war"]
