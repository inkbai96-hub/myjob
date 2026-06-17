FROM openjdk:17-jdk-slim
WORKDIR /app
COPY *.jar app.jar
ENTRYPOINT ["sh", "-c", "java -jar app.jar --server.port=${PORT}"]
