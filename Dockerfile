FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM adoptopenjdk/openjdk11:alpine-jre
COPY target/major-0.0.1-SNAPSHOT.jar major-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/major-0.0.1-SNAPSHOT.jar"]
