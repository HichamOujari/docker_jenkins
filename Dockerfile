FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
ADD target/atellier3-0.0.1-SNAPSHOT.war atellier3-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","atellier3-0.0.1-SNAPSHOT.war"]
