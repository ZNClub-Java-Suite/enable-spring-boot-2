# enable-spring-boot-2
Demo and Playground to explore Spring Boot 2 latest features

## Topics
1. Display all auto configuration classes
- IntelliJ IDEA option
- log
2. Inject properties
- default path: application.yaml, application.properties
- default path with profile sections
- specific path on classpath
3. @Configuration override
- Security
- Logging Pattern
- Metrics
- Health

---
## Index

- Getting Started
- Checklist
- Extras

---
## Getting Started

1. Spring Boot App
```java
DemoForSpring2Application.java
```
2. Spring Boot Test
```java
DemoForSpring2ApplicationTests.java
```
3. Maven Docker build
```bash
mvn spring-boot:build-image -Dspring-boot.build-image.imageName=enable-spring-boot-2 -f pom.xml
# Failing: [INFO] I/O exception (java.io.IOException) caught when processing request to {}->docker://localhost:2376: com.sun.jna.LastErrorException: [13] Permission denied
# Apparently due to running docker command as non-root user
# https://stackoverflow.com/questions/48957195/how-to-fix-docker-got-permission-denied-issue

```

---
## Checklist

### Spring
- upgrade to latest Boot and Cloud versions:
- eureka client: pom.xml, application.yaml, @EnableEurekaClient
- *auto-configure H2*

### Java
- logging levels: application.yaml
- git-plugin-for-actuator: pom.xml -> build.plugins
- Docker image: Dockerfile
- *Lombok*


## Extras

### Docker

- status of docker daemon
```bash
systemctl status docker
```

- build
```bash
docker build /home/znevzz/Desktop/Projects/Spring/enable-spring-boot-2/ -t enable-spring-boot-2
```
- view
```bash
docker image ls
docker container ls
```
- run
```bash
docker run <IMAGE-ID>/<REPOSITORY> -p <INTERNAL-PORT:EXTERNAL-PORT>
docker run -p 8999:8999 enable-spring-boot-2
```
- delete
```bash
docker image rm <IMAGE-ID>
docker image rm <IMAGE-ID> -f
```
- enter container
```bash
docker exec -it <IMAGE-ID> bash
```

