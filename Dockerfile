FROM openjdk
COPY target/atellier3-0.0.1-SNAPSHOT.war /
EXPOSE 8081
ENTRYPOINT ["java","-jar","/atellier3-0.0.1-SNAPSHOT.war"]