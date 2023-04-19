FROM openjdk:11
VOLUME /tmp
COPY target/*.jar major-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/major-0.0.1-SNAPSHOT.jar"]
EXPOSE 8089