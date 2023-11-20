FROM openjdk:17
EXPOSE 8080
ADD target/SpringBoot-Jenkins-Docker.jar SpringBoot-Jenkins-Docker.jar
ENTRYPOINT ["java", "-jar", "/SpringBoot-Jenkins-Docker.jar"]