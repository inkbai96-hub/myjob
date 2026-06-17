FROM openjdk:17-jdk-slim
WORKDIR /app
COPY *.jar pet-connect-1.0.0.jar
ENTRYPOINT ["sh", "-c", "java -jar app.jar --server.port=${PORT}"]
