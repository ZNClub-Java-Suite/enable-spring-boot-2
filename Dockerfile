#FROM openjdk:8-jdk-alpine
#ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

## Run as n-root user with JDK-11 for linux dist

FROM openjdk:11.0.7-jre-slim
#RUN addgroup -S spring && adduser -S spring -G spring
RUN addgroup spring && adduser --ingroup spring spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]