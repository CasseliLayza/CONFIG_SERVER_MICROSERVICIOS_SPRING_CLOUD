FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
ARG JAR_FILE=target/CONFIG-SERVER-SPRING-CLOUD-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} config_server.jar
EXPOSE 8761
CMD ["java", "-jar", "config_server.jar"]