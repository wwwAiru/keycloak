# syntax=docker/dockerfile:1
FROM maven:3.8.3-openjdk-17
WORKDIR /app
ADD . .
RUN mvn clean install
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "target/auth-backend.jar"]
