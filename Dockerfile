FROM openjdk:17-jdk-slim
WORKDIR /app
COPY *.jar app.jar
# 读取云托管分配的PORT环境变量
ENTRYPOINT ["sh","-c","java -jar app.jar --server.port=${PORT}"]
