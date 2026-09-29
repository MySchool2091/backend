# Dockerfile for manufacturing-service 29092026
FROM eclipse-temurin:17-jre
WORKDIR /app
RUN groupadd -r pharma && useradd -r -g pharma pharma
COPY target/*.jar app.jar
USER pharma
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "app.jar"]
