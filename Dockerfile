From openjdk :8
EXPOSE 8080
ADD target/atellier3-0.0.1-SNAPSHOT.war atellier3-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/atellier3-0.0.1-SNAPSHOT.war"]
